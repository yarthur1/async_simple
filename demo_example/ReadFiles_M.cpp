/*
 * Copyright (c) 2022, Alibaba Group Holding Limited;
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
#include <algorithm>
#include <fstream>
#include <iostream>
#include <memory>
#include <string>
#include <vector>
#ifdef USE_MODULES
import async_simple;
#else
#include "async_simple/Future.h"
#include "async_simple/coro/Lazy.h"
#include "async_simple/coro/SyncAwait.h"
#include "async_simple/executors/SimpleExecutor.h"
#include "async_simple/uthread/Await.h"
#include "async_simple/uthread/Async.h"
#endif

using namespace async_simple;
using namespace async_simple::coro;

using FileName = std::string;

/////////////////////////////////////////
/////////// Synchronous Part ////////////
/////////////////////////////////////////

// The *Impl is not the key point for this example, code readers
// could ignore this.
uint64_t CountCharInFileImpl(const FileName &File, char c) {
    uint64_t Ret = 0;
    std::ifstream infile(File);
    std::string line;
    while (std::getline(infile, line))
        Ret += std::count(line.begin(), line.end(), c);
    return Ret;
}

uint64_t CountCharInFiles(const std::vector<FileName> &Files, char c) {
    uint64_t ReadSize = 0;
    for (const auto &File : Files)
        ReadSize += CountCharInFileImpl(File, c);
    return ReadSize;
}

/////////////////////////////////////////
/////////// Asynchronous Part ///////////
/////////////////////////////////////////

template <class T>
concept Range = requires(T &t) {
                    t.begin();
                    t.end();
                };

// It is not travial to implement an asynchronous do_for_each.
template <typename InputIt, typename Callable>
Future<void> do_for_each(InputIt Begin, InputIt End, Callable func) {
    for (auto It = Begin; It != End; ++It) {
        auto F = std::invoke(func, *It);
        // If we met an error, return early.
        if (F.result().hasError())
            return F;
        if (F.hasResult())
            continue;
        return std::move(F).thenTry(
            [SubBegin = ++It, SubEnd = End, func](auto &&) {
                return do_for_each(SubBegin, SubEnd, func);
            });
    }
    return makeReadyFuture();
}

template <Range RangeTy, typename Callable>
Future<void> do_for_each(const RangeTy &Rng, Callable func) {
    return do_for_each(Rng.begin(), Rng.end(), func);
}

// The *Impl is not the key point for this example, code readers
// could ignore this.
Future<uint64_t> CountCharInFileAsyncImpl(const FileName &File, char c) {
    uint64_t Ret = 0;
    std::ifstream infile(File);
    std::string line;
    while (std::getline(infile, line))
        Ret += std::count(line.begin(), line.end(), c);
    return makeReadyFuture(std::move(Ret));
}

Future<uint64_t> CountCharInFilesAsync(const std::vector<FileName> &Files,
                                       char c) {
    // std::shared_ptr is necessary here. Since ReadSize may be used after
    // CountCharInFilesAsync function ends.
    auto ReadSize = std::make_shared<uint64_t>(0);
    // We need to introduce another API `do_for_each` here.
    return do_for_each(std::move(Files),
                       [ReadSize, c](auto &&File) {
                           return CountCharInFileAsyncImpl(File, c).thenValue(
                               [ReadSize](auto &&Size) {
                                   *ReadSize += Size;
                                   return makeReadyFuture();
                               });
                       })
        .thenTry([ReadSize](auto &&) {
            return makeReadyFuture<uint64_t>(*ReadSize);
        });
    ;
}

/////////////////////////////////////////
/////////// Coroutine Part //////////////
/////////////////////////////////////////

// The *Impl is not the key point for this example, code readers
// could ignore this.
Lazy<uint64_t> CountCharFileCoroImpl(const FileName &File, char c) {
    uint64_t Ret = 0;
    std::ifstream infile(File);
    std::string line;
    while (std::getline(infile, line))
        Ret += std::count(line.begin(), line.end(), c);
    co_return Ret;
}

Lazy<uint64_t> CountCharInFilesCoro(const std::vector<FileName> &Files,
                                    char c) {
    uint64_t ReadSize = 0;
    for (const auto &File : Files)
        ReadSize += co_await CountCharFileCoroImpl(File, c);
    co_return ReadSize;
}

// Lazy<uint64_t> CountCharInFilesCoro1(const std::vector<FileName> &Files,
//                                     char c, Executor* ex) {
//     uint64_t ReadSize = 0;
//     ReadSize = co_await CountCharInFilesCoro(Files, c).via(ex);
//     co_return ReadSize;
// }

int main() {
    std::vector<FileName> Files = {
        "Input/1.txt", "Input/2.txt",
        "Input/3.txt", "Input/4.txt",
        "Input/5.txt", "Input/6.txt",
        "Input/7.txt", "Input/8.txt",
        "Input/9.txt", "Input/10.txt",
    };

    std::cout << "Calculating char counts synchronously.\n";
    auto ResSync = CountCharInFiles(Files, 'x');
    std::cout << "Files contain " << ResSync << " 'x' chars.\n";

    executors::SimpleExecutor executor(4);
    Promise<Unit> p;
    auto future = p.getFuture();

    std::cout << "Calculating char counts asynchronously by future.\n";
    auto f = std::move(future).via(&executor).thenTry([&Files](auto &&) {
        return CountCharInFilesAsync(Files, 'x').thenValue([](auto &&Value) {
            std::cout << "Files contain " << Value << " 'x' chars.\n";
        });
    });

    p.setValue(Unit());
    f.wait();

    std::cout << "Calculating char counts asynchronously by coroutine.\n";
    auto ResCoro = syncAwait(CountCharInFilesCoro(Files, 'x'), &executor);
    std::cout << "Files contain " << ResCoro << " 'x' chars.\n";

    // std::cout << "Calculating char counts asynchronously by coroutine.\n";
    // ResCoro = syncAwait(CountCharInFilesCoro1(Files, 'x', &executor));
    // std::cout << "Files contain " << ResCoro << " 'x' chars.\n";

    using namespace async_simple::uthread;
    std::cout << "Calculating char counts asynchronously by ucoroutine.\n";
    // await调用一定要在执行器中
    ResCoro = await(async(
                  Launch::Current, Attribute{&executor},
                  &CountCharInFiles, Files, 'x'));
    std::cout << "Files contain " << ResCoro << " 'x' chars.\n";


    CountCharInFilesCoro(Files, 'x').start([](Try<uint64_t> result) {
            std::this_thread::sleep_for(std::chrono::seconds(5)); // 线程睡眠5秒钟
            std::cout << std::move(result).value()<<std::endl;
        });
    std::cout << "yxj\n";
    int64_t usec=-1;
    int64_t usec_rounded_to_sec = usec / 1000000L * 1000000L;
    std::cout << usec_rounded_to_sec<<std::endl;

    return 0;
}
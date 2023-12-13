#include "async_simple/coro/Lazy.h"
#include "async_simple/coro/SyncAwait.h"
#include <iostream>
#include <coroutine>

using async_simple::coro::Lazy;
using async_simple::Try;

std::coroutine_handle<> handle_c;
std::coroutine_handle<> handle_a;

struct  awaitA {

  auto await_ready() {
    return false;
  }

  bool await_suspend(std::coroutine_handle<> handle) {
    handle_c = std::move(handle);
    return true;
  }

  void await_resume() {
  }
};


Lazy<void> funcc() {
  std::cout << "funcc before" << std::endl;
  co_await awaitA();
  std::cout << "funcc after" << std::endl;
}

Lazy<void> funcb() {
  std::cout << "funcb before" << std::endl;
  co_await funcc();
  std::cout << "funcb end" << std::endl;
}

struct  awaitA1 {

  auto await_ready() {
    return false;
  }

  bool await_suspend(std::coroutine_handle<> handle) {
    handle_a = std::move(handle);
    funcb().start([](Try<void> result){});
    return true;
  }

  void await_resume() {
  }
};

Lazy<void> funa() {
  std::cout << "funa before" << std::endl;
  co_await awaitA1();
  std::cout << "funa after" << std::endl;
}

// 协程被挂起，await_suspend返回true,返回到调用者执行；调用者也为挂起的状态，由于没有resume,不会唤醒调用者；执行权层层返回?
int main() {
  auto x  = funa();
  // syncAwait(x);
  x.start([](Try<void> result){});
  std::cout << "hello main" << std::endl;
  handle_c.resume();
  // handle_a.resume();
  return 0;
}


// funca, funcb ,func  before
// hello main
// funcc funccb, funa   after

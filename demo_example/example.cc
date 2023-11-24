#include <cassert>
#include <cstdio>
#include <iostream>
#include <fstream>
#include <optional>
#include <experimental/coroutine>

enum class button_press : int { LEFT, RIGHT };

template<typename Signal, typename Result>
class StateMachine {
public:
  struct promise_type {
    std::optional<Signal> recent_signal;
    std::optional<Result> returned_value;
    auto get_return_object() {
      return std::experimental::coroutine_handle<promise_type>::from_promise(*this);
    }
    void unhandled_exception() {
      auto exceptionPtr = std::current_exception();
      if (exceptionPtr)
        std::rethrow_exception(exceptionPtr);
    }
    auto initial_suspend() { return std::experimental::suspend_never{}; }
    auto final_suspend() noexcept { return std::experimental::suspend_always{}; }

    void return_value(Result result) {
      returned_value.emplace(result);
    }
    struct SignalAwaiter {
      std::optional<Signal> recent_signal;
      SignalAwaiter(Signal signal) : recent_signal{signal} {}
      bool await_ready() { return false; }
      void await_suspend(std::experimental::coroutine_handle<promise_type>) {}
      Signal await_resume() {
        assert(recent_signal.has_value());
        Signal tmp = *recent_signal;
        recent_signal.reset();
        return tmp;
      }
    };
    auto await_transform(Signal signal) {
      return SignalAwaiter(recent_signal.value_or(signal));
    }
  };
  using co_handle = std::experimental::coroutine_handle<promise_type>;
  StateMachine(co_handle handle) : handle_{handle} {}
  StateMachine(const StateMachine&) = delete;
  StateMachine(StateMachine&&) = delete;
  ~StateMachine() { handle_.destroy(); }

  void send_signal(Signal signal) {
    handle_.promise().recent_signal = signal;
    if (! handle_.done())
      handle_.resume();
  }
  std::optional<Result> get_result() {
    return handle_.promise().returned_value;
  }
private:
  co_handle handle_;
};

StateMachine<button_press, std::string> open_file(const char *file_name) {
  using resumable_type = StateMachine<button_press, std::string>;
  button_press first = co_await button_press{};
  while (true) {
    button_press second = co_await button_press{};
    if (first == button_press::LEFT && first == second) {
      std::ifstream in1(file_name);
      std::string some_str;
      in1 >> some_str;
      // co_return std::fopen(file_name, "r");
      co_return some_str;
    }
      
    first = second;
  }
}

int main() {
  auto machine = open_file("state.txt");
  machine.send_signal(button_press::LEFT);
  machine.send_signal(button_press::RIGHT);
  machine.send_signal(button_press::LEFT);
  machine.send_signal(button_press::LEFT);
  auto result = machine.get_result();
  if (result.has_value()) {
    std::cout << result.value() << std::endl;
    std::cout << "Closing file" << std::endl;
    // std::fclose(result.value());
  }
  return 0;
}
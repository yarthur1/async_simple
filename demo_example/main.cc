#include <iostream>
#include <experimental/coroutine>

class resumable {
 public:
  struct promise_type;
  using coro_handle = std::experimental::coroutine_handle<promise_type>;
  resumable(coro_handle handle) : handle_(handle) { assert(handle); }
  resumable(resumable const&) = delete;
  resumable(resumable&&) = delete;

  bool resume() {
    handle_.resume();
    return true;
  }

  ~resumable() { handle_.destroy(); }

  const std::string& return_val();

 private:
  coro_handle handle_;
};

struct resumable::promise_type {
  using coro_handle = std::experimental::coroutine_handle<promise_type>;
  auto get_return_object() { return coro_handle::from_promise(*this); }
  auto initial_suspend() noexcept { return std::experimental::suspend_always(); }
  auto final_suspend() noexcept { return std::experimental::suspend_always(); }
  // void return_void() { }
  void return_value(const std::string& str) {
    std::cout << str << std::endl;
    str_ = str;
  }

  const std::string& return_val() { return str_; }
  static resumable get_return_object_on_allocation_failure() { 
    throw std::bad_alloc();
  }
  void unhandled_exception() { std::terminate(); }

 private:
  std::string str_;
};

const std::string& resumable::return_val() {
  return handle_.promise().return_val();
}

resumable foo1();
resumable foo2();

resumable r1 = foo1();
resumable r2 = foo2();

resumable foo1() {
  std::cout << "foo1" << std::endl;
  r2.resume();
  co_return "hello world";
}

resumable foo2() {
  std::cout << "foo2" << std::endl;
  r1.resume();
  co_return "hello world";
}

int main() {
  r1.resume();
  return 0;
}



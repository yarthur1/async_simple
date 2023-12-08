#include <iostream>
#include <experimental/coroutine>


void print(const char * str) {
  std::cout << str << std::endl;
}


class resumable {
 public:
  struct promise_type;
  using coro_handle = std::experimental::coroutine_handle<promise_type>;
  resumable(coro_handle handle) : handle_(handle) { assert(handle); }
  resumable(resumable const&) = delete;
  resumable(resumable&&) = delete;

  bool resume() {
    if (!handle_.done()) {
      handle_.resume();
    }
    return !handle_.done();
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


resumable foo() {
  print("hello ");
  co_await std::experimental::suspend_always();
  print("Coroutine");
  co_return "hello world";
}

int main() {
  resumable res = foo();
  while(res.resume()) ;
  print(res.return_val().c_str());
  return 0;
}



cc_binary(
    name = "async_echo_server",
    srcs = ["demo_example/async_echo_server.cpp"],
    # deps = [":hdrs_dep"],
    # copts = ASYNC_SIMPLE_COPTS,
    cxxflags = ["-Wno-sign-compare",
           "-Iasync_simple/demo_example/asio",
           "-Iasync_simple/demo_example",
           "-Iasync_simple",
           "-DLEVELDB_PLATFORM_POSIX",
           ],
)

cc_binary(
    name = "async_echo_client",
    srcs = ["demo_example/async_echo_client.cpp"],
    # deps = [":hdrs_dep"],
    # copts = ASYNC_SIMPLE_COPTS,
    cxxflags = ["-Wno-sign-compare",
           "-Iasync_simple/demo_example/asio",
           "-Iasync_simple/demo_example",
           "-Iasync_simple",
           "-DLEVELDB_PLATFORM_POSIX",
           ],
)
load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")
load("@build_bazel_rules_apple//apple:ios.bzl", "ios_unit_test")

swift_library(
    name = "Demo",
    module_name = "Demo",
    srcs = [
        "Sources/Demo.swift"
    ],
    visibility = ["//visibility:public"],
)

swift_library(
    name = "DemoTests_Library",
    module_name = "DemoTests_Library",
    srcs = [
        "Tests/DemoTests.swift"
    ],
    deps = [
        ":Demo"
    ],
    visibility = ["//visibility:public"],
)

ios_unit_test(
    name = "DemoTests",
    data = [
        "Data/demo-fixture.txt"
    ],
    deps = [
        ":DemoTests_Library"
    ],
    minimum_os_version = "13.2.1",
    visibility = ["//visibility:public"],
)

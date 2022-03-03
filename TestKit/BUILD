load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")

swift_library(
    name = "TestKit",
    module_name = "TestKit",
    srcs = glob([
        "Sources/*.swift"
    ], allow_empty = False),
    deps = [
        "@SwiftSnapshotTesting//:SnapshotTesting",
        "@PathKit//:PathKit",
    ],
    visibility = ["//visibility:public"],
)

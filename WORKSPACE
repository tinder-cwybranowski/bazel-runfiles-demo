load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

RULES_APPLE_GIT_SHA = "708e74b2eeb6fb0e950bcfcdcb804bf59cbec117"
http_archive(
    name = "build_bazel_rules_apple",
    sha256 = "537e27436db7c9596226c8e99d3641e062e12a0098042e4788d6f08552cd4287",
    url = "https://github.com/tinder-cwybranowski/rules_apple/archive/%s.zip" % RULES_APPLE_GIT_SHA,
    strip_prefix = "rules_apple-%s" % RULES_APPLE_GIT_SHA
)

load(
    "@build_bazel_rules_apple//apple:repositories.bzl",
    "apple_rules_dependencies",
)

apple_rules_dependencies()

load(
    "@build_bazel_rules_swift//swift:repositories.bzl",
    "swift_rules_dependencies",
)

swift_rules_dependencies()

load(
    "@build_bazel_rules_swift//swift:extras.bzl",
    "swift_rules_extra_dependencies",
)

swift_rules_extra_dependencies()

load(
    "@build_bazel_apple_support//lib:repositories.bzl",
    "apple_support_dependencies",
)

apple_support_dependencies()

PATHKIT_GIT_SHA = "73f8e9dca9b7a3078cb79128217dc8f2e585a511"
http_archive(
    name = "PathKit",
    url = "https://github.com/kylef/PathKit/archive/%s.zip" % PATHKIT_GIT_SHA,
    sha256 = "39a5dfd87e4eeab2e6be19da966f4e35093872a271e8aa754457ead5241db703",
    build_file = "PathKit/BUILD",
    strip_prefix = "PathKit-%s" % PATHKIT_GIT_SHA
)

SWIFT_SNAPSHOT_TESTING_GIT_SHA = "c466812aa2e22898f27557e2e780d3aad7a27203"
http_archive(
    name = "SwiftSnapshotTesting",
    url = "https://github.com/pointfreeco/swift-snapshot-testing/archive/%s.zip" % SWIFT_SNAPSHOT_TESTING_GIT_SHA,
    sha256 = "fc37a90810c9ea402ab5612b4942ad1a22ae8105bbdd36cc64e0912343ad4a90",
    build_file = "SwiftSnapshotTesting/BUILD",
    strip_prefix = "swift-snapshot-testing-%s" % SWIFT_SNAPSHOT_TESTING_GIT_SHA
)

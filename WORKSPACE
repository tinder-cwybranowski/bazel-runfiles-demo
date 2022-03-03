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

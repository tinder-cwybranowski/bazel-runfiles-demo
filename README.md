# Rules Apple - Test Runfiles Demo

This project demonstrates an issue with [rules_apple:ios_unit_test](https://github.com/bazelbuild/rules_apple/blob/a14ed339739fec4f52527bbcad71203022d7969c/doc/common_info.md#runfiles-location-for-test-data) support whereby this target type appears to be missing access to artifacts defined in the `data` parameter via `ProcessInfo.processInfo.environment["TEST_SRCDIR"]`. The documentation states that this `TEST_SRCDIR` key should appear in the execution environment, however it appears to be missing.

---

## Setup

The `Makefile` contains a single command to demonstrate the issue:
```
make test
```

---

## Issue

- **Expected Behavior:** `ProcessInfo.processInfo.environment["TEST_SRCDIR"]` is non-empty and provides a path to artifacts defined in `ios_unit_test.data`.
- **Actual Behavior:** `ProcessInfo.processInfo.environment["TEST_SRCDIR"]` is empty. Moreover, none of the key-value pairs in `ProcessInfo.processInfo.environment` appear to lead to any artifacts defined in `ios_unit_test.data` for `DemoTests`.

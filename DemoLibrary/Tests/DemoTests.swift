@testable import Demo
import TestKit
import XCTest

final class DemoTests: XCTestCase {

    override func setUp() {
        super.setUp()
        isRecording = false
    }

    func testDemo_value() {
        // GIVEN
        let input: Demo = .init()

        // WHEN
        let output: Int = input.value

        // THEN
        assertSnapshot(matching: "\(output)\n", as: .lines)
    }

    // [CW] 3/2/22 - 'TEST_SRCDIR' should be available in the environment per:
    // https://github.com/bazelbuild/rules_apple/blob/a14ed339739fec4f52527bbcad71203022d7969c/doc/common_info.md#runfiles-location-for-test-data
    func testEnvironment() {
        // GIVEN
        let environment: [String: String] = ProcessInfo.processInfo.environment

        // WHEN
        let output: String? = environment["TEST_SRCDIR"]

        // THEN
        XCTAssertNotNil(output)
    }
}

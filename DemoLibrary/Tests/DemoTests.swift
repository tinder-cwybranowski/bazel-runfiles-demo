@testable import Demo
import XCTest

final class DemoTests: XCTestCase {

    func testDemo_value() {
        // GIVEN
        let input: Demo = .init()

        // WHEN
        let output: Int = input.value

        // THEN
        XCTAssertEqual(output, 100)
    }
}

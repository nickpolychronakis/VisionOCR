import XCTest
@testable import VisionOCR

final class VisionOCRTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(VisionOCR().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}

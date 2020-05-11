import XCTest
@testable import VisionOCR

final class VisionOCRTests: XCTestCase {
    @available(iOS 13.0, *)
    func testResult() {
//        guard let path = Bundle.main.path(forResource: "testImage", ofType: "jpg") else { fatalError() }
//        
//        guard let uiimage = UIImage(contentsOfFile: path) else { fatalError() }
//        
//        // Δεν υποστηρίζεται ακόμα το assetCatalog
//        XCTAssertEqual(VisionOCR().readImage(uiimage: uiimage), "YOU'RE NOT LOST/nYOU'RE HERE")
    }

    @available(iOS 13.0, *)
    static var allTests = [
        ("testResult", testResult),
    ]
}

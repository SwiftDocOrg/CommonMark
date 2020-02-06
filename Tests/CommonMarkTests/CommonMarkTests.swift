import XCTest
import CommonMark

final class CommonMarkTests: XCTestCase {
    func testCommonMarkVersion() {
        XCTAssertEqual(CommonMark.version.major, 0)
        XCTAssertEqual(CommonMark.version.minor, 28)
        XCTAssertEqual(CommonMark.version.patch, 3)
    }
}

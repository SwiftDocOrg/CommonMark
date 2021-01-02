import XCTest
import CommonMark

final class CommonMarkTests: XCTestCase {
    func testCommonMarkVersion() {
        XCTAssertEqual(CommonMark.version.major, 0)
        XCTAssertEqual(CommonMark.version.minor, 29)
        XCTAssertEqual(CommonMark.version.patch, 0)
    }
}

// This file was automatically generated and should not be edited.

import XCTest
import CommonMark

final class CommonMarkSpecInlinesTests: XCTestCase {
    func testExample297() throws {
        let markdown = #######"""
        `hi`lo`

        """#######

        let html = #######"""
        <p><code>hi</code>lo`</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    static var allTests = [
        ("testExample297", testExample297),
    ]
}

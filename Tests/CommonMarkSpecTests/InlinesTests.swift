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

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

}

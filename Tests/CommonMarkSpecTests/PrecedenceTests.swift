// This file was automatically generated and should not be edited.

import XCTest
import CommonMark

final class CommonMarkSpecPrecedenceTests: XCTestCase {
    func testExample12() throws {
        let markdown = #######"""
        - `one
        - two`

        """#######

        let html = #######"""
        <ul>
        <li>`one</li>
        <li>two`</li>
        </ul>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

}

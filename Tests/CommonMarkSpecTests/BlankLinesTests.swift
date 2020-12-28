// This file was automatically generated and should not be edited.

import XCTest
import CommonMark

final class CommonMarkSpecBlankLinesTests: XCTestCase {
    func testExample197() throws {
        let markdown = #######"""
          
        
        aaa
          
        
        # aaa
        
          

        """#######

        let html = #######"""
        <p>aaa</p>
        <h1>aaa</h1>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

}

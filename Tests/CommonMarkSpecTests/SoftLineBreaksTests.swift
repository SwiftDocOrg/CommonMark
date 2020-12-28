// This file was automatically generated and should not be edited.

import XCTest
import CommonMark

final class CommonMarkSpecSoftLineBreaksTests: XCTestCase {
    func testExample645() throws {
        let markdown = #######"""
        foo
        baz

        """#######

        let html = #######"""
        <p>foo
        baz</p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample646() throws {
        let markdown = #######"""
        foo 
         baz

        """#######

        let html = #######"""
        <p>foo
        baz</p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

}

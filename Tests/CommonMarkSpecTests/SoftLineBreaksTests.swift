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
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
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
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    static var allTests = [
        ("testExample645", testExample645),
        ("testExample646", testExample646),
    ]
}

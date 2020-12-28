// This file was automatically generated and should not be edited.

import XCTest
import CommonMark

final class CommonMarkSpecTextualContentTests: XCTestCase {
    func testExample647() throws {
        let markdown = #######"""
        hello $.;'there

        """#######

        let html = #######"""
        <p>hello $.;'there</p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample648() throws {
        let markdown = #######"""
        Foo χρῆν

        """#######

        let html = #######"""
        <p>Foo χρῆν</p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample649() throws {
        let markdown = #######"""
        Multiple     spaces

        """#######

        let html = #######"""
        <p>Multiple     spaces</p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

}

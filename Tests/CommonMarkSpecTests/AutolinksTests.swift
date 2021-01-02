// This file was automatically generated and should not be edited.

import XCTest
import CommonMark

final class CommonMarkSpecAutolinksTests: XCTestCase {
    func testExample590() throws {
        let markdown = #######"""
        <http://foo.bar.baz>

        """#######

        let html = #######"""
        <p><a href="http://foo.bar.baz">http://foo.bar.baz</a></p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample591() throws {
        let markdown = #######"""
        <http://foo.bar.baz/test?q=hello&id=22&boolean>

        """#######

        let html = #######"""
        <p><a href="http://foo.bar.baz/test?q=hello&amp;id=22&amp;boolean">http://foo.bar.baz/test?q=hello&amp;id=22&amp;boolean</a></p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample592() throws {
        let markdown = #######"""
        <irc://foo.bar:2233/baz>

        """#######

        let html = #######"""
        <p><a href="irc://foo.bar:2233/baz">irc://foo.bar:2233/baz</a></p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample593() throws {
        let markdown = #######"""
        <MAILTO:FOO@BAR.BAZ>

        """#######

        let html = #######"""
        <p><a href="MAILTO:FOO@BAR.BAZ">MAILTO:FOO@BAR.BAZ</a></p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample594() throws {
        let markdown = #######"""
        <a+b+c:d>

        """#######

        let html = #######"""
        <p><a href="a+b+c:d">a+b+c:d</a></p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample595() throws {
        let markdown = #######"""
        <made-up-scheme://foo,bar>

        """#######

        let html = #######"""
        <p><a href="made-up-scheme://foo,bar">made-up-scheme://foo,bar</a></p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample596() throws {
        let markdown = #######"""
        <http://../>

        """#######

        let html = #######"""
        <p><a href="http://../">http://../</a></p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample597() throws {
        let markdown = #######"""
        <localhost:5001/foo>

        """#######

        let html = #######"""
        <p><a href="localhost:5001/foo">localhost:5001/foo</a></p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample598() throws {
        let markdown = #######"""
        <http://foo.bar/baz bim>

        """#######

        let html = #######"""
        <p>&lt;http://foo.bar/baz bim&gt;</p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample599() throws {
        let markdown = #######"""
        <http://example.com/\[\>

        """#######

        let html = #######"""
        <p><a href="http://example.com/%5C%5B%5C">http://example.com/\[\</a></p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample600() throws {
        let markdown = #######"""
        <foo@bar.example.com>

        """#######

        let html = #######"""
        <p><a href="mailto:foo@bar.example.com">foo@bar.example.com</a></p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample601() throws {
        let markdown = #######"""
        <foo+special@Bar.baz-bar0.com>

        """#######

        let html = #######"""
        <p><a href="mailto:foo+special@Bar.baz-bar0.com">foo+special@Bar.baz-bar0.com</a></p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample602() throws {
        let markdown = #######"""
        <foo\+@bar.example.com>

        """#######

        let html = #######"""
        <p>&lt;foo+@bar.example.com&gt;</p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample603() throws {
        let markdown = #######"""
        <>

        """#######

        let html = #######"""
        <p>&lt;&gt;</p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample604() throws {
        let markdown = #######"""
        < http://foo.bar >

        """#######

        let html = #######"""
        <p>&lt; http://foo.bar &gt;</p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample605() throws {
        let markdown = #######"""
        <m:abc>

        """#######

        let html = #######"""
        <p>&lt;m:abc&gt;</p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample606() throws {
        let markdown = #######"""
        <foo.bar.baz>

        """#######

        let html = #######"""
        <p>&lt;foo.bar.baz&gt;</p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample607() throws {
        let markdown = #######"""
        http://example.com

        """#######

        let html = #######"""
        <p>http://example.com</p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample608() throws {
        let markdown = #######"""
        foo@bar.example.com

        """#######

        let html = #######"""
        <p>foo@bar.example.com</p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

}

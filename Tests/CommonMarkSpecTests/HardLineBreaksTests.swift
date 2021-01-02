// This file was automatically generated and should not be edited.

import XCTest
import CommonMark

final class CommonMarkSpecHardLineBreaksTests: XCTestCase {
    func testExample630() throws {
        let markdown = #######"""
        foo  
        baz

        """#######

        let html = #######"""
        <p>foo<br />
        baz</p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample631() throws {
        let markdown = #######"""
        foo\
        baz

        """#######

        let html = #######"""
        <p>foo<br />
        baz</p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample632() throws {
        let markdown = #######"""
        foo       
        baz

        """#######

        let html = #######"""
        <p>foo<br />
        baz</p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample633() throws {
        let markdown = #######"""
        foo  
             bar

        """#######

        let html = #######"""
        <p>foo<br />
        bar</p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample634() throws {
        let markdown = #######"""
        foo\
             bar

        """#######

        let html = #######"""
        <p>foo<br />
        bar</p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample635() throws {
        let markdown = #######"""
        *foo  
        bar*

        """#######

        let html = #######"""
        <p><em>foo<br />
        bar</em></p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample636() throws {
        let markdown = #######"""
        *foo\
        bar*

        """#######

        let html = #######"""
        <p><em>foo<br />
        bar</em></p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample637() throws {
        let markdown = #######"""
        `code 
        span`

        """#######

        let html = #######"""
        <p><code>code  span</code></p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample638() throws {
        let markdown = #######"""
        `code\
        span`

        """#######

        let html = #######"""
        <p><code>code\ span</code></p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample639() throws {
        let markdown = #######"""
        <a href="foo  
        bar">

        """#######

        let html = #######"""
        <p><a href="foo  
        bar"></p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample640() throws {
        let markdown = #######"""
        <a href="foo\
        bar">

        """#######

        let html = #######"""
        <p><a href="foo\
        bar"></p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample641() throws {
        let markdown = #######"""
        foo\

        """#######

        let html = #######"""
        <p>foo\</p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample642() throws {
        let markdown = #######"""
        foo  

        """#######

        let html = #######"""
        <p>foo</p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample643() throws {
        let markdown = #######"""
        ### foo\

        """#######

        let html = #######"""
        <h3>foo\</h3>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample644() throws {
        let markdown = #######"""
        ### foo  

        """#######

        let html = #######"""
        <h3>foo</h3>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

}

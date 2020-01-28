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
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
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
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
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
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
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
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
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
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
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
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
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
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
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
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
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
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
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
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
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
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample641() throws {
        let markdown = #######"""
        foo\

        """#######

        let html = #######"""
        <p>foo\</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample642() throws {
        let markdown = #######"""
        foo  

        """#######

        let html = #######"""
        <p>foo</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample643() throws {
        let markdown = #######"""
        ### foo\

        """#######

        let html = #######"""
        <h3>foo\</h3>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample644() throws {
        let markdown = #######"""
        ### foo  

        """#######

        let html = #######"""
        <h3>foo</h3>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

}

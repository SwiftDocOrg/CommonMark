// This file was automatically generated and should not be edited.

import XCTest
import CommonMark

final class CommonMarkSpecCodeSpansTests: XCTestCase {
    func testExample328() throws {
        let markdown = #######"""
        `foo`

        """#######

        let html = #######"""
        <p><code>foo</code></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample329() throws {
        let markdown = #######"""
        `` foo ` bar ``

        """#######

        let html = #######"""
        <p><code>foo ` bar</code></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample330() throws {
        let markdown = #######"""
        ` `` `

        """#######

        let html = #######"""
        <p><code>``</code></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample331() throws {
        let markdown = #######"""
        `  ``  `

        """#######

        let html = #######"""
        <p><code> `` </code></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample332() throws {
        let markdown = #######"""
        ` a`

        """#######

        let html = #######"""
        <p><code> a</code></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample333() throws {
        let markdown = #######"""
        ` b `

        """#######

        let html = #######"""
        <p><code> b </code></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample334() throws {
        let markdown = #######"""
        ` `
        `  `

        """#######

        let html = #######"""
        <p><code> </code>
        <code>  </code></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample335() throws {
        let markdown = #######"""
        ``
        foo
        bar  
        baz
        ``

        """#######

        let html = #######"""
        <p><code>foo bar   baz</code></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample336() throws {
        let markdown = #######"""
        ``
        foo 
        ``

        """#######

        let html = #######"""
        <p><code>foo </code></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample337() throws {
        let markdown = #######"""
        `foo   bar 
        baz`

        """#######

        let html = #######"""
        <p><code>foo   bar  baz</code></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample338() throws {
        let markdown = #######"""
        `foo\`bar`

        """#######

        let html = #######"""
        <p><code>foo\</code>bar`</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample339() throws {
        let markdown = #######"""
        ``foo`bar``

        """#######

        let html = #######"""
        <p><code>foo`bar</code></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample340() throws {
        let markdown = #######"""
        ` foo `` bar `

        """#######

        let html = #######"""
        <p><code>foo `` bar</code></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample341() throws {
        let markdown = #######"""
        *foo`*`

        """#######

        let html = #######"""
        <p>*foo<code>*</code></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample342() throws {
        let markdown = #######"""
        [not a `link](/foo`)

        """#######

        let html = #######"""
        <p>[not a <code>link](/foo</code>)</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample343() throws {
        let markdown = #######"""
        `<a href="`">`

        """#######

        let html = #######"""
        <p><code>&lt;a href=&quot;</code>&quot;&gt;`</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample344() throws {
        let markdown = #######"""
        <a href="`">`

        """#######

        let html = #######"""
        <p><a href="`">`</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample345() throws {
        let markdown = #######"""
        `<http://foo.bar.`baz>`

        """#######

        let html = #######"""
        <p><code>&lt;http://foo.bar.</code>baz&gt;`</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample346() throws {
        let markdown = #######"""
        <http://foo.bar.`baz>`

        """#######

        let html = #######"""
        <p><a href="http://foo.bar.%60baz">http://foo.bar.`baz</a>`</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample347() throws {
        let markdown = #######"""
        ```foo``

        """#######

        let html = #######"""
        <p>```foo``</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample348() throws {
        let markdown = #######"""
        `foo

        """#######

        let html = #######"""
        <p>`foo</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample349() throws {
        let markdown = #######"""
        `foo``bar``

        """#######

        let html = #######"""
        <p>`foo<code>bar</code></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    static var allTests = [
        ("testExample328", testExample328),
        ("testExample329", testExample329),
        ("testExample330", testExample330),
        ("testExample331", testExample331),
        ("testExample332", testExample332),
        ("testExample333", testExample333),
        ("testExample334", testExample334),
        ("testExample335", testExample335),
        ("testExample336", testExample336),
        ("testExample337", testExample337),
        ("testExample338", testExample338),
        ("testExample339", testExample339),
        ("testExample340", testExample340),
        ("testExample341", testExample341),
        ("testExample342", testExample342),
        ("testExample343", testExample343),
        ("testExample344", testExample344),
        ("testExample345", testExample345),
        ("testExample346", testExample346),
        ("testExample347", testExample347),
        ("testExample348", testExample348),
        ("testExample349", testExample349),
    ]
}

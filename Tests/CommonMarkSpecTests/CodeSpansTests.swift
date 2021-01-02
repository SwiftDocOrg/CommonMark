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

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample329() throws {
        let markdown = #######"""
        `` foo ` bar ``

        """#######

        let html = #######"""
        <p><code>foo ` bar</code></p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample330() throws {
        let markdown = #######"""
        ` `` `

        """#######

        let html = #######"""
        <p><code>``</code></p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample331() throws {
        let markdown = #######"""
        `  ``  `

        """#######

        let html = #######"""
        <p><code> `` </code></p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample332() throws {
        let markdown = #######"""
        ` a`

        """#######

        let html = #######"""
        <p><code> a</code></p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample333() throws {
        let markdown = #######"""
        ` b `

        """#######

        let html = #######"""
        <p><code> b </code></p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
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

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
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

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
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

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
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

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample338() throws {
        let markdown = #######"""
        `foo\`bar`

        """#######

        let html = #######"""
        <p><code>foo\</code>bar`</p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample339() throws {
        let markdown = #######"""
        ``foo`bar``

        """#######

        let html = #######"""
        <p><code>foo`bar</code></p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample340() throws {
        let markdown = #######"""
        ` foo `` bar `

        """#######

        let html = #######"""
        <p><code>foo `` bar</code></p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample341() throws {
        let markdown = #######"""
        *foo`*`

        """#######

        let html = #######"""
        <p>*foo<code>*</code></p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample342() throws {
        let markdown = #######"""
        [not a `link](/foo`)

        """#######

        let html = #######"""
        <p>[not a <code>link](/foo</code>)</p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample343() throws {
        let markdown = #######"""
        `<a href="`">`

        """#######

        let html = #######"""
        <p><code>&lt;a href=&quot;</code>&quot;&gt;`</p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample344() throws {
        let markdown = #######"""
        <a href="`">`

        """#######

        let html = #######"""
        <p><a href="`">`</p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample345() throws {
        let markdown = #######"""
        `<http://foo.bar.`baz>`

        """#######

        let html = #######"""
        <p><code>&lt;http://foo.bar.</code>baz&gt;`</p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample346() throws {
        let markdown = #######"""
        <http://foo.bar.`baz>`

        """#######

        let html = #######"""
        <p><a href="http://foo.bar.%60baz">http://foo.bar.`baz</a>`</p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample347() throws {
        let markdown = #######"""
        ```foo``

        """#######

        let html = #######"""
        <p>```foo``</p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample348() throws {
        let markdown = #######"""
        `foo

        """#######

        let html = #######"""
        <p>`foo</p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample349() throws {
        let markdown = #######"""
        `foo``bar``

        """#######

        let html = #######"""
        <p>`foo<code>bar</code></p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

}

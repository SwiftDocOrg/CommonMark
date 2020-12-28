// This file was automatically generated and should not be edited.

import XCTest
import CommonMark

final class CommonMarkSpecBackslashEscapesTests: XCTestCase {
    func testExample298() throws {
        let markdown = #######"""
        \!\"\#\$\%\&\'\(\)\*\+\,\-\.\/\:\;\<\=\>\?\@\[\\\]\^\_\`\{\|\}\~

        """#######

        let html = #######"""
        <p>!&quot;#$%&amp;'()*+,-./:;&lt;=&gt;?@[\]^_`{|}~</p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample299() throws {
        let markdown = #######"""
        \	\A\a\ \3\φ\«

        """#######

        let html = #######"""
        <p>\	\A\a\ \3\φ\«</p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample300() throws {
        let markdown = #######"""
        \*not emphasized*
        \<br/> not a tag
        \[not a link](/foo)
        \`not code`
        1\. not a list
        \* not a list
        \# not a heading
        \[foo]: /url "not a reference"
        \&ouml; not a character entity

        """#######

        let html = #######"""
        <p>*not emphasized*
        &lt;br/&gt; not a tag
        [not a link](/foo)
        `not code`
        1. not a list
        * not a list
        # not a heading
        [foo]: /url &quot;not a reference&quot;
        &amp;ouml; not a character entity</p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample301() throws {
        let markdown = #######"""
        \\*emphasis*

        """#######

        let html = #######"""
        <p>\<em>emphasis</em></p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample302() throws {
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

    func testExample303() throws {
        let markdown = #######"""
        `` \[\` ``

        """#######

        let html = #######"""
        <p><code>\[\`</code></p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample304() throws {
        let markdown = #######"""
            \[\]

        """#######

        let html = #######"""
        <pre><code>\[\]
        </code></pre>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample305() throws {
        let markdown = #######"""
        ~~~
        \[\]
        ~~~

        """#######

        let html = #######"""
        <pre><code>\[\]
        </code></pre>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample306() throws {
        let markdown = #######"""
        <http://example.com?find=\*>

        """#######

        let html = #######"""
        <p><a href="http://example.com?find=%5C*">http://example.com?find=\*</a></p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample307() throws {
        let markdown = #######"""
        <a href="/bar\/)">

        """#######

        let html = #######"""
        <a href="/bar\/)">

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample308() throws {
        let markdown = #######"""
        [foo](/bar\* "ti\*tle")

        """#######

        let html = #######"""
        <p><a href="/bar*" title="ti*tle">foo</a></p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample309() throws {
        let markdown = #######"""
        [foo]
        
        [foo]: /bar\* "ti\*tle"

        """#######

        let html = #######"""
        <p><a href="/bar*" title="ti*tle">foo</a></p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample310() throws {
        let markdown = #######"""
        ``` foo\+bar
        foo
        ```

        """#######

        let html = #######"""
        <pre><code class="language-foo+bar">foo
        </code></pre>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

}

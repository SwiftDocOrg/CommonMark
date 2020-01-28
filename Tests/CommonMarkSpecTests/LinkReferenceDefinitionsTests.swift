// This file was automatically generated and should not be edited.

import XCTest
import CommonMark

final class CommonMarkSpecLinkReferenceDefinitionsTests: XCTestCase {
    func testExample161() throws {
        let markdown = #######"""
        [foo]: /url "title"
        
        [foo]

        """#######

        let html = #######"""
        <p><a href="/url" title="title">foo</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample162() throws {
        let markdown = #######"""
           [foo]: 
              /url  
                   'the title'  
        
        [foo]

        """#######

        let html = #######"""
        <p><a href="/url" title="the title">foo</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample163() throws {
        let markdown = #######"""
        [Foo*bar\]]:my_(url) 'title (with parens)'
        
        [Foo*bar\]]

        """#######

        let html = #######"""
        <p><a href="my_(url)" title="title (with parens)">Foo*bar]</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample164() throws {
        let markdown = #######"""
        [Foo bar]:
        <my url>
        'title'
        
        [Foo bar]

        """#######

        let html = #######"""
        <p><a href="my%20url" title="title">Foo bar</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample165() throws {
        let markdown = #######"""
        [foo]: /url '
        title
        line1
        line2
        '
        
        [foo]

        """#######

        let html = #######"""
        <p><a href="/url" title="
        title
        line1
        line2
        ">foo</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample166() throws {
        let markdown = #######"""
        [foo]: /url 'title
        
        with blank line'
        
        [foo]

        """#######

        let html = #######"""
        <p>[foo]: /url 'title</p>
        <p>with blank line'</p>
        <p>[foo]</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample167() throws {
        let markdown = #######"""
        [foo]:
        /url
        
        [foo]

        """#######

        let html = #######"""
        <p><a href="/url">foo</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample168() throws {
        let markdown = #######"""
        [foo]:
        
        [foo]

        """#######

        let html = #######"""
        <p>[foo]:</p>
        <p>[foo]</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample169() throws {
        let markdown = #######"""
        [foo]: <>
        
        [foo]

        """#######

        let html = #######"""
        <p><a href="">foo</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample170() throws {
        let markdown = #######"""
        [foo]: <bar>(baz)
        
        [foo]

        """#######

        let html = #######"""
        <p>[foo]: <bar>(baz)</p>
        <p>[foo]</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample171() throws {
        let markdown = #######"""
        [foo]: /url\bar\*baz "foo\"bar\baz"
        
        [foo]

        """#######

        let html = #######"""
        <p><a href="/url%5Cbar*baz" title="foo&quot;bar\baz">foo</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample172() throws {
        let markdown = #######"""
        [foo]
        
        [foo]: url

        """#######

        let html = #######"""
        <p><a href="url">foo</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample173() throws {
        let markdown = #######"""
        [foo]
        
        [foo]: first
        [foo]: second

        """#######

        let html = #######"""
        <p><a href="first">foo</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample174() throws {
        let markdown = #######"""
        [FOO]: /url
        
        [Foo]

        """#######

        let html = #######"""
        <p><a href="/url">Foo</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample175() throws {
        let markdown = #######"""
        [ΑΓΩ]: /φου
        
        [αγω]

        """#######

        let html = #######"""
        <p><a href="/%CF%86%CE%BF%CF%85">αγω</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample176() throws {
        let markdown = #######"""
        [foo]: /url

        """#######

        let html = #######"""

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample177() throws {
        let markdown = #######"""
        [
        foo
        ]: /url
        bar

        """#######

        let html = #######"""
        <p>bar</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample178() throws {
        let markdown = #######"""
        [foo]: /url "title" ok

        """#######

        let html = #######"""
        <p>[foo]: /url &quot;title&quot; ok</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample179() throws {
        let markdown = #######"""
        [foo]: /url
        "title" ok

        """#######

        let html = #######"""
        <p>&quot;title&quot; ok</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample180() throws {
        let markdown = #######"""
            [foo]: /url "title"
        
        [foo]

        """#######

        let html = #######"""
        <pre><code>[foo]: /url &quot;title&quot;
        </code></pre>
        <p>[foo]</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample181() throws {
        let markdown = #######"""
        ```
        [foo]: /url
        ```
        
        [foo]

        """#######

        let html = #######"""
        <pre><code>[foo]: /url
        </code></pre>
        <p>[foo]</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample182() throws {
        let markdown = #######"""
        Foo
        [bar]: /baz
        
        [bar]

        """#######

        let html = #######"""
        <p>Foo
        [bar]: /baz</p>
        <p>[bar]</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample183() throws {
        let markdown = #######"""
        # [Foo]
        [foo]: /url
        > bar

        """#######

        let html = #######"""
        <h1><a href="/url">Foo</a></h1>
        <blockquote>
        <p>bar</p>
        </blockquote>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample184() throws {
        let markdown = #######"""
        [foo]: /url
        bar
        ===
        [foo]

        """#######

        let html = #######"""
        <h1>bar</h1>
        <p><a href="/url">foo</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample185() throws {
        let markdown = #######"""
        [foo]: /url
        ===
        [foo]

        """#######

        let html = #######"""
        <p>===
        <a href="/url">foo</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample186() throws {
        let markdown = #######"""
        [foo]: /foo-url "foo"
        [bar]: /bar-url
          "bar"
        [baz]: /baz-url
        
        [foo],
        [bar],
        [baz]

        """#######

        let html = #######"""
        <p><a href="/foo-url" title="foo">foo</a>,
        <a href="/bar-url" title="bar">bar</a>,
        <a href="/baz-url">baz</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample187() throws {
        let markdown = #######"""
        [foo]
        
        > [foo]: /url

        """#######

        let html = #######"""
        <p><a href="/url">foo</a></p>
        <blockquote>
        </blockquote>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample188() throws {
        let markdown = #######"""
        [foo]: /url

        """#######

        let html = #######"""

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

}

// This file was automatically generated and should not be edited.

import XCTest
import CommonMark

final class CommonMarkSpecBlockQuotesTests: XCTestCase {
    func testExample198() throws {
        let markdown = #######"""
        > # Foo
        > bar
        > baz

        """#######

        let html = #######"""
        <blockquote>
        <h1>Foo</h1>
        <p>bar
        baz</p>
        </blockquote>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample199() throws {
        let markdown = #######"""
        ># Foo
        >bar
        > baz

        """#######

        let html = #######"""
        <blockquote>
        <h1>Foo</h1>
        <p>bar
        baz</p>
        </blockquote>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample200() throws {
        let markdown = #######"""
           > # Foo
           > bar
         > baz

        """#######

        let html = #######"""
        <blockquote>
        <h1>Foo</h1>
        <p>bar
        baz</p>
        </blockquote>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample201() throws {
        let markdown = #######"""
            > # Foo
            > bar
            > baz

        """#######

        let html = #######"""
        <pre><code>&gt; # Foo
        &gt; bar
        &gt; baz
        </code></pre>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample202() throws {
        let markdown = #######"""
        > # Foo
        > bar
        baz

        """#######

        let html = #######"""
        <blockquote>
        <h1>Foo</h1>
        <p>bar
        baz</p>
        </blockquote>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample203() throws {
        let markdown = #######"""
        > bar
        baz
        > foo

        """#######

        let html = #######"""
        <blockquote>
        <p>bar
        baz
        foo</p>
        </blockquote>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample204() throws {
        let markdown = #######"""
        > foo
        ---

        """#######

        let html = #######"""
        <blockquote>
        <p>foo</p>
        </blockquote>
        <hr />

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample205() throws {
        let markdown = #######"""
        > - foo
        - bar

        """#######

        let html = #######"""
        <blockquote>
        <ul>
        <li>foo</li>
        </ul>
        </blockquote>
        <ul>
        <li>bar</li>
        </ul>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample206() throws {
        let markdown = #######"""
        >     foo
            bar

        """#######

        let html = #######"""
        <blockquote>
        <pre><code>foo
        </code></pre>
        </blockquote>
        <pre><code>bar
        </code></pre>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample207() throws {
        let markdown = #######"""
        > ```
        foo
        ```

        """#######

        let html = #######"""
        <blockquote>
        <pre><code></code></pre>
        </blockquote>
        <p>foo</p>
        <pre><code></code></pre>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample208() throws {
        let markdown = #######"""
        > foo
            - bar

        """#######

        let html = #######"""
        <blockquote>
        <p>foo
        - bar</p>
        </blockquote>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample209() throws {
        let markdown = #######"""
        >

        """#######

        let html = #######"""
        <blockquote>
        </blockquote>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample210() throws {
        let markdown = #######"""
        >
        >  
        > 

        """#######

        let html = #######"""
        <blockquote>
        </blockquote>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample211() throws {
        let markdown = #######"""
        >
        > foo
        >  

        """#######

        let html = #######"""
        <blockquote>
        <p>foo</p>
        </blockquote>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample212() throws {
        let markdown = #######"""
        > foo
        
        > bar

        """#######

        let html = #######"""
        <blockquote>
        <p>foo</p>
        </blockquote>
        <blockquote>
        <p>bar</p>
        </blockquote>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample213() throws {
        let markdown = #######"""
        > foo
        > bar

        """#######

        let html = #######"""
        <blockquote>
        <p>foo
        bar</p>
        </blockquote>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample214() throws {
        let markdown = #######"""
        > foo
        >
        > bar

        """#######

        let html = #######"""
        <blockquote>
        <p>foo</p>
        <p>bar</p>
        </blockquote>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample215() throws {
        let markdown = #######"""
        foo
        > bar

        """#######

        let html = #######"""
        <p>foo</p>
        <blockquote>
        <p>bar</p>
        </blockquote>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample216() throws {
        let markdown = #######"""
        > aaa
        ***
        > bbb

        """#######

        let html = #######"""
        <blockquote>
        <p>aaa</p>
        </blockquote>
        <hr />
        <blockquote>
        <p>bbb</p>
        </blockquote>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample217() throws {
        let markdown = #######"""
        > bar
        baz

        """#######

        let html = #######"""
        <blockquote>
        <p>bar
        baz</p>
        </blockquote>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample218() throws {
        let markdown = #######"""
        > bar
        
        baz

        """#######

        let html = #######"""
        <blockquote>
        <p>bar</p>
        </blockquote>
        <p>baz</p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample219() throws {
        let markdown = #######"""
        > bar
        >
        baz

        """#######

        let html = #######"""
        <blockquote>
        <p>bar</p>
        </blockquote>
        <p>baz</p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample220() throws {
        let markdown = #######"""
        > > > foo
        bar

        """#######

        let html = #######"""
        <blockquote>
        <blockquote>
        <blockquote>
        <p>foo
        bar</p>
        </blockquote>
        </blockquote>
        </blockquote>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample221() throws {
        let markdown = #######"""
        >>> foo
        > bar
        >>baz

        """#######

        let html = #######"""
        <blockquote>
        <blockquote>
        <blockquote>
        <p>foo
        bar
        baz</p>
        </blockquote>
        </blockquote>
        </blockquote>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample222() throws {
        let markdown = #######"""
        >     code
        
        >    not code

        """#######

        let html = #######"""
        <blockquote>
        <pre><code>code
        </code></pre>
        </blockquote>
        <blockquote>
        <p>not code</p>
        </blockquote>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

}

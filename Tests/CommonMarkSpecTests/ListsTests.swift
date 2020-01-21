// This file was automatically generated and should not be edited.

import XCTest
import CommonMark

final class CommonMarkSpecListsTests: XCTestCase {
    func testExample271() throws {
        let markdown = #######"""
        - foo
        - bar
        + baz

        """#######

        let html = #######"""
        <ul>
        <li>foo</li>
        <li>bar</li>
        </ul>
        <ul>
        <li>baz</li>
        </ul>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample272() throws {
        let markdown = #######"""
        1. foo
        2. bar
        3) baz

        """#######

        let html = #######"""
        <ol>
        <li>foo</li>
        <li>bar</li>
        </ol>
        <ol start="3">
        <li>baz</li>
        </ol>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample273() throws {
        let markdown = #######"""
        Foo
        - bar
        - baz

        """#######

        let html = #######"""
        <p>Foo</p>
        <ul>
        <li>bar</li>
        <li>baz</li>
        </ul>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample274() throws {
        let markdown = #######"""
        The number of windows in my house is
        14.  The number of doors is 6.

        """#######

        let html = #######"""
        <p>The number of windows in my house is
        14.  The number of doors is 6.</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample275() throws {
        let markdown = #######"""
        The number of windows in my house is
        1.  The number of doors is 6.

        """#######

        let html = #######"""
        <p>The number of windows in my house is</p>
        <ol>
        <li>The number of doors is 6.</li>
        </ol>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample276() throws {
        let markdown = #######"""
        - foo
        
        - bar
        
        
        - baz

        """#######

        let html = #######"""
        <ul>
        <li>
        <p>foo</p>
        </li>
        <li>
        <p>bar</p>
        </li>
        <li>
        <p>baz</p>
        </li>
        </ul>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample277() throws {
        let markdown = #######"""
        - foo
          - bar
            - baz
        
        
              bim

        """#######

        let html = #######"""
        <ul>
        <li>foo
        <ul>
        <li>bar
        <ul>
        <li>
        <p>baz</p>
        <p>bim</p>
        </li>
        </ul>
        </li>
        </ul>
        </li>
        </ul>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample278() throws {
        let markdown = #######"""
        - foo
        - bar
        
        <!-- -->
        
        - baz
        - bim

        """#######

        let html = #######"""
        <ul>
        <li>foo</li>
        <li>bar</li>
        </ul>
        <!-- -->
        <ul>
        <li>baz</li>
        <li>bim</li>
        </ul>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample279() throws {
        let markdown = #######"""
        -   foo
        
            notcode
        
        -   foo
        
        <!-- -->
        
            code

        """#######

        let html = #######"""
        <ul>
        <li>
        <p>foo</p>
        <p>notcode</p>
        </li>
        <li>
        <p>foo</p>
        </li>
        </ul>
        <!-- -->
        <pre><code>code
        </code></pre>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample280() throws {
        let markdown = #######"""
        - a
         - b
          - c
           - d
          - e
         - f
        - g

        """#######

        let html = #######"""
        <ul>
        <li>a</li>
        <li>b</li>
        <li>c</li>
        <li>d</li>
        <li>e</li>
        <li>f</li>
        <li>g</li>
        </ul>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample281() throws {
        let markdown = #######"""
        1. a
        
          2. b
        
           3. c

        """#######

        let html = #######"""
        <ol>
        <li>
        <p>a</p>
        </li>
        <li>
        <p>b</p>
        </li>
        <li>
        <p>c</p>
        </li>
        </ol>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample282() throws {
        let markdown = #######"""
        - a
         - b
          - c
           - d
            - e

        """#######

        let html = #######"""
        <ul>
        <li>a</li>
        <li>b</li>
        <li>c</li>
        <li>d
        - e</li>
        </ul>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample283() throws {
        let markdown = #######"""
        1. a
        
          2. b
        
            3. c

        """#######

        let html = #######"""
        <ol>
        <li>
        <p>a</p>
        </li>
        <li>
        <p>b</p>
        </li>
        </ol>
        <pre><code>3. c
        </code></pre>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample284() throws {
        let markdown = #######"""
        - a
        - b
        
        - c

        """#######

        let html = #######"""
        <ul>
        <li>
        <p>a</p>
        </li>
        <li>
        <p>b</p>
        </li>
        <li>
        <p>c</p>
        </li>
        </ul>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample285() throws {
        let markdown = #######"""
        * a
        *
        
        * c

        """#######

        let html = #######"""
        <ul>
        <li>
        <p>a</p>
        </li>
        <li></li>
        <li>
        <p>c</p>
        </li>
        </ul>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample286() throws {
        let markdown = #######"""
        - a
        - b
        
          c
        - d

        """#######

        let html = #######"""
        <ul>
        <li>
        <p>a</p>
        </li>
        <li>
        <p>b</p>
        <p>c</p>
        </li>
        <li>
        <p>d</p>
        </li>
        </ul>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample287() throws {
        let markdown = #######"""
        - a
        - b
        
          [ref]: /url
        - d

        """#######

        let html = #######"""
        <ul>
        <li>
        <p>a</p>
        </li>
        <li>
        <p>b</p>
        </li>
        <li>
        <p>d</p>
        </li>
        </ul>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample288() throws {
        let markdown = #######"""
        - a
        - ```
          b
        
        
          ```
        - c

        """#######

        let html = #######"""
        <ul>
        <li>a</li>
        <li>
        <pre><code>b
        
        
        </code></pre>
        </li>
        <li>c</li>
        </ul>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample289() throws {
        let markdown = #######"""
        - a
          - b
        
            c
        - d

        """#######

        let html = #######"""
        <ul>
        <li>a
        <ul>
        <li>
        <p>b</p>
        <p>c</p>
        </li>
        </ul>
        </li>
        <li>d</li>
        </ul>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample290() throws {
        let markdown = #######"""
        * a
          > b
          >
        * c

        """#######

        let html = #######"""
        <ul>
        <li>a
        <blockquote>
        <p>b</p>
        </blockquote>
        </li>
        <li>c</li>
        </ul>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample291() throws {
        let markdown = #######"""
        - a
          > b
          ```
          c
          ```
        - d

        """#######

        let html = #######"""
        <ul>
        <li>a
        <blockquote>
        <p>b</p>
        </blockquote>
        <pre><code>c
        </code></pre>
        </li>
        <li>d</li>
        </ul>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample292() throws {
        let markdown = #######"""
        - a

        """#######

        let html = #######"""
        <ul>
        <li>a</li>
        </ul>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample293() throws {
        let markdown = #######"""
        - a
          - b

        """#######

        let html = #######"""
        <ul>
        <li>a
        <ul>
        <li>b</li>
        </ul>
        </li>
        </ul>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample294() throws {
        let markdown = #######"""
        1. ```
           foo
           ```
        
           bar

        """#######

        let html = #######"""
        <ol>
        <li>
        <pre><code>foo
        </code></pre>
        <p>bar</p>
        </li>
        </ol>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample295() throws {
        let markdown = #######"""
        * foo
          * bar
        
          baz

        """#######

        let html = #######"""
        <ul>
        <li>
        <p>foo</p>
        <ul>
        <li>bar</li>
        </ul>
        <p>baz</p>
        </li>
        </ul>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample296() throws {
        let markdown = #######"""
        - a
          - b
          - c
        
        - d
          - e
          - f

        """#######

        let html = #######"""
        <ul>
        <li>
        <p>a</p>
        <ul>
        <li>b</li>
        <li>c</li>
        </ul>
        </li>
        <li>
        <p>d</p>
        <ul>
        <li>e</li>
        <li>f</li>
        </ul>
        </li>
        </ul>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    static var allTests = [
        ("testExample271", testExample271),
        ("testExample272", testExample272),
        ("testExample273", testExample273),
        ("testExample274", testExample274),
        ("testExample275", testExample275),
        ("testExample276", testExample276),
        ("testExample277", testExample277),
        ("testExample278", testExample278),
        ("testExample279", testExample279),
        ("testExample280", testExample280),
        ("testExample281", testExample281),
        ("testExample282", testExample282),
        ("testExample283", testExample283),
        ("testExample284", testExample284),
        ("testExample285", testExample285),
        ("testExample286", testExample286),
        ("testExample287", testExample287),
        ("testExample288", testExample288),
        ("testExample289", testExample289),
        ("testExample290", testExample290),
        ("testExample291", testExample291),
        ("testExample292", testExample292),
        ("testExample293", testExample293),
        ("testExample294", testExample294),
        ("testExample295", testExample295),
        ("testExample296", testExample296),
    ]
}

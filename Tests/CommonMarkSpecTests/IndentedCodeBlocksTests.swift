// This file was automatically generated and should not be edited.

import XCTest
import CommonMark

final class CommonMarkSpecIndentedCodeBlocksTests: XCTestCase {
    func testExample77() throws {
        let markdown = #######"""
            a simple
              indented code block

        """#######

        let html = #######"""
        <pre><code>a simple
          indented code block
        </code></pre>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample78() throws {
        let markdown = #######"""
          - foo
        
            bar

        """#######

        let html = #######"""
        <ul>
        <li>
        <p>foo</p>
        <p>bar</p>
        </li>
        </ul>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample79() throws {
        let markdown = #######"""
        1.  foo
        
            - bar

        """#######

        let html = #######"""
        <ol>
        <li>
        <p>foo</p>
        <ul>
        <li>bar</li>
        </ul>
        </li>
        </ol>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample80() throws {
        let markdown = #######"""
            <a/>
            *hi*
        
            - one

        """#######

        let html = #######"""
        <pre><code>&lt;a/&gt;
        *hi*
        
        - one
        </code></pre>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample81() throws {
        let markdown = #######"""
            chunk1
        
            chunk2
          
         
         
            chunk3

        """#######

        let html = #######"""
        <pre><code>chunk1
        
        chunk2
        
        
        
        chunk3
        </code></pre>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample82() throws {
        let markdown = #######"""
            chunk1
              
              chunk2

        """#######

        let html = #######"""
        <pre><code>chunk1
          
          chunk2
        </code></pre>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample83() throws {
        let markdown = #######"""
        Foo
            bar
        

        """#######

        let html = #######"""
        <p>Foo
        bar</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample84() throws {
        let markdown = #######"""
            foo
        bar

        """#######

        let html = #######"""
        <pre><code>foo
        </code></pre>
        <p>bar</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample85() throws {
        let markdown = #######"""
        # Heading
            foo
        Heading
        ------
            foo
        ----

        """#######

        let html = #######"""
        <h1>Heading</h1>
        <pre><code>foo
        </code></pre>
        <h2>Heading</h2>
        <pre><code>foo
        </code></pre>
        <hr />

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample86() throws {
        let markdown = #######"""
                foo
            bar

        """#######

        let html = #######"""
        <pre><code>    foo
        bar
        </code></pre>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample87() throws {
        let markdown = #######"""
        
            
            foo
            
        

        """#######

        let html = #######"""
        <pre><code>foo
        </code></pre>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample88() throws {
        let markdown = #######"""
            foo  

        """#######

        let html = #######"""
        <pre><code>foo  
        </code></pre>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    static var allTests = [
        ("testExample77", testExample77),
        ("testExample78", testExample78),
        ("testExample79", testExample79),
        ("testExample80", testExample80),
        ("testExample81", testExample81),
        ("testExample82", testExample82),
        ("testExample83", testExample83),
        ("testExample84", testExample84),
        ("testExample85", testExample85),
        ("testExample86", testExample86),
        ("testExample87", testExample87),
        ("testExample88", testExample88),
    ]
}

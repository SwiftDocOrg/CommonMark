// This file was automatically generated and should not be edited.

import XCTest
import CommonMark

final class CommonMarkSpecTabsTests: XCTestCase {
    func testExample1() throws {
        let markdown = #######"""
        	foo	baz		bim

        """#######

        let html = #######"""
        <pre><code>foo	baz		bim
        </code></pre>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample2() throws {
        let markdown = #######"""
          	foo	baz		bim

        """#######

        let html = #######"""
        <pre><code>foo	baz		bim
        </code></pre>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample3() throws {
        let markdown = #######"""
            a	a
            ὐ	a

        """#######

        let html = #######"""
        <pre><code>a	a
        ὐ	a
        </code></pre>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample4() throws {
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

    func testExample5() throws {
        let markdown = #######"""
        - foo
        
        		bar

        """#######

        let html = #######"""
        <ul>
        <li>
        <p>foo</p>
        <pre><code>  bar
        </code></pre>
        </li>
        </ul>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample6() throws {
        let markdown = #######"""
        >		foo

        """#######

        let html = #######"""
        <blockquote>
        <pre><code>  foo
        </code></pre>
        </blockquote>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample7() throws {
        let markdown = #######"""
        -		foo

        """#######

        let html = #######"""
        <ul>
        <li>
        <pre><code>  foo
        </code></pre>
        </li>
        </ul>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample8() throws {
        let markdown = #######"""
            foo
        	bar

        """#######

        let html = #######"""
        <pre><code>foo
        bar
        </code></pre>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample9() throws {
        let markdown = #######"""
         - foo
           - bar
        	 - baz

        """#######

        let html = #######"""
        <ul>
        <li>foo
        <ul>
        <li>bar
        <ul>
        <li>baz</li>
        </ul>
        </li>
        </ul>
        </li>
        </ul>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample10() throws {
        let markdown = #######"""
        #	Foo

        """#######

        let html = #######"""
        <h1>Foo</h1>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample11() throws {
        let markdown = #######"""
        *	*	*	

        """#######

        let html = #######"""
        <hr />

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

}

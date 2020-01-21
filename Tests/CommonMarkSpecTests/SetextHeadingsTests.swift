// This file was automatically generated and should not be edited.

import XCTest
import CommonMark

final class CommonMarkSpecSetextHeadingsTests: XCTestCase {
    func testExample50() throws {
        let markdown = #######"""
        Foo *bar*
        =========
        
        Foo *bar*
        ---------

        """#######

        let html = #######"""
        <h1>Foo <em>bar</em></h1>
        <h2>Foo <em>bar</em></h2>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample51() throws {
        let markdown = #######"""
        Foo *bar
        baz*
        ====

        """#######

        let html = #######"""
        <h1>Foo <em>bar
        baz</em></h1>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample52() throws {
        let markdown = #######"""
          Foo *bar
        baz*	
        ====

        """#######

        let html = #######"""
        <h1>Foo <em>bar
        baz</em></h1>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample53() throws {
        let markdown = #######"""
        Foo
        -------------------------
        
        Foo
        =

        """#######

        let html = #######"""
        <h2>Foo</h2>
        <h1>Foo</h1>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample54() throws {
        let markdown = #######"""
           Foo
        ---
        
          Foo
        -----
        
          Foo
          ===

        """#######

        let html = #######"""
        <h2>Foo</h2>
        <h2>Foo</h2>
        <h1>Foo</h1>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample55() throws {
        let markdown = #######"""
            Foo
            ---
        
            Foo
        ---

        """#######

        let html = #######"""
        <pre><code>Foo
        ---
        
        Foo
        </code></pre>
        <hr />

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample56() throws {
        let markdown = #######"""
        Foo
           ----      

        """#######

        let html = #######"""
        <h2>Foo</h2>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample57() throws {
        let markdown = #######"""
        Foo
            ---

        """#######

        let html = #######"""
        <p>Foo
        ---</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample58() throws {
        let markdown = #######"""
        Foo
        = =
        
        Foo
        --- -

        """#######

        let html = #######"""
        <p>Foo
        = =</p>
        <p>Foo</p>
        <hr />

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample59() throws {
        let markdown = #######"""
        Foo  
        -----

        """#######

        let html = #######"""
        <h2>Foo</h2>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample60() throws {
        let markdown = #######"""
        Foo\
        ----

        """#######

        let html = #######"""
        <h2>Foo\</h2>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample61() throws {
        let markdown = #######"""
        `Foo
        ----
        `
        
        <a title="a lot
        ---
        of dashes"/>

        """#######

        let html = #######"""
        <h2>`Foo</h2>
        <p>`</p>
        <h2>&lt;a title=&quot;a lot</h2>
        <p>of dashes&quot;/&gt;</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample62() throws {
        let markdown = #######"""
        > Foo
        ---

        """#######

        let html = #######"""
        <blockquote>
        <p>Foo</p>
        </blockquote>
        <hr />

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample63() throws {
        let markdown = #######"""
        > foo
        bar
        ===

        """#######

        let html = #######"""
        <blockquote>
        <p>foo
        bar
        ===</p>
        </blockquote>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample64() throws {
        let markdown = #######"""
        - Foo
        ---

        """#######

        let html = #######"""
        <ul>
        <li>Foo</li>
        </ul>
        <hr />

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample65() throws {
        let markdown = #######"""
        Foo
        Bar
        ---

        """#######

        let html = #######"""
        <h2>Foo
        Bar</h2>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample66() throws {
        let markdown = #######"""
        ---
        Foo
        ---
        Bar
        ---
        Baz

        """#######

        let html = #######"""
        <hr />
        <h2>Foo</h2>
        <h2>Bar</h2>
        <p>Baz</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample67() throws {
        let markdown = #######"""
        
        ====

        """#######

        let html = #######"""
        <p>====</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample68() throws {
        let markdown = #######"""
        ---
        ---

        """#######

        let html = #######"""
        <hr />
        <hr />

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample69() throws {
        let markdown = #######"""
        - foo
        -----

        """#######

        let html = #######"""
        <ul>
        <li>foo</li>
        </ul>
        <hr />

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample70() throws {
        let markdown = #######"""
            foo
        ---

        """#######

        let html = #######"""
        <pre><code>foo
        </code></pre>
        <hr />

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample71() throws {
        let markdown = #######"""
        > foo
        -----

        """#######

        let html = #######"""
        <blockquote>
        <p>foo</p>
        </blockquote>
        <hr />

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample72() throws {
        let markdown = #######"""
        \> foo
        ------

        """#######

        let html = #######"""
        <h2>&gt; foo</h2>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample73() throws {
        let markdown = #######"""
        Foo
        
        bar
        ---
        baz

        """#######

        let html = #######"""
        <p>Foo</p>
        <h2>bar</h2>
        <p>baz</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample74() throws {
        let markdown = #######"""
        Foo
        bar
        
        ---
        
        baz

        """#######

        let html = #######"""
        <p>Foo
        bar</p>
        <hr />
        <p>baz</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample75() throws {
        let markdown = #######"""
        Foo
        bar
        * * *
        baz

        """#######

        let html = #######"""
        <p>Foo
        bar</p>
        <hr />
        <p>baz</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample76() throws {
        let markdown = #######"""
        Foo
        bar
        \---
        baz

        """#######

        let html = #######"""
        <p>Foo
        bar
        ---
        baz</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    static var allTests = [
        ("testExample50", testExample50),
        ("testExample51", testExample51),
        ("testExample52", testExample52),
        ("testExample53", testExample53),
        ("testExample54", testExample54),
        ("testExample55", testExample55),
        ("testExample56", testExample56),
        ("testExample57", testExample57),
        ("testExample58", testExample58),
        ("testExample59", testExample59),
        ("testExample60", testExample60),
        ("testExample61", testExample61),
        ("testExample62", testExample62),
        ("testExample63", testExample63),
        ("testExample64", testExample64),
        ("testExample65", testExample65),
        ("testExample66", testExample66),
        ("testExample67", testExample67),
        ("testExample68", testExample68),
        ("testExample69", testExample69),
        ("testExample70", testExample70),
        ("testExample71", testExample71),
        ("testExample72", testExample72),
        ("testExample73", testExample73),
        ("testExample74", testExample74),
        ("testExample75", testExample75),
        ("testExample76", testExample76),
    ]
}

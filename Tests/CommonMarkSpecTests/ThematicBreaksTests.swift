// This file was automatically generated and should not be edited.

import XCTest
import CommonMark

final class CommonMarkSpecThematicBreaksTests: XCTestCase {
    func testExample13() throws {
        let markdown = #######"""
        ***
        ---
        ___

        """#######

        let html = #######"""
        <hr />
        <hr />
        <hr />

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample14() throws {
        let markdown = #######"""
        +++

        """#######

        let html = #######"""
        <p>+++</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample15() throws {
        let markdown = #######"""
        ===

        """#######

        let html = #######"""
        <p>===</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample16() throws {
        let markdown = #######"""
        --
        **
        __

        """#######

        let html = #######"""
        <p>--
        **
        __</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample17() throws {
        let markdown = #######"""
         ***
          ***
           ***

        """#######

        let html = #######"""
        <hr />
        <hr />
        <hr />

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample18() throws {
        let markdown = #######"""
            ***

        """#######

        let html = #######"""
        <pre><code>***
        </code></pre>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample19() throws {
        let markdown = #######"""
        Foo
            ***

        """#######

        let html = #######"""
        <p>Foo
        ***</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample20() throws {
        let markdown = #######"""
        _____________________________________

        """#######

        let html = #######"""
        <hr />

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample21() throws {
        let markdown = #######"""
         - - -

        """#######

        let html = #######"""
        <hr />

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample22() throws {
        let markdown = #######"""
         **  * ** * ** * **

        """#######

        let html = #######"""
        <hr />

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample23() throws {
        let markdown = #######"""
        -     -      -      -

        """#######

        let html = #######"""
        <hr />

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample24() throws {
        let markdown = #######"""
        - - - -    

        """#######

        let html = #######"""
        <hr />

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample25() throws {
        let markdown = #######"""
        _ _ _ _ a
        
        a------
        
        ---a---

        """#######

        let html = #######"""
        <p>_ _ _ _ a</p>
        <p>a------</p>
        <p>---a---</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample26() throws {
        let markdown = #######"""
         *-*

        """#######

        let html = #######"""
        <p><em>-</em></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample27() throws {
        let markdown = #######"""
        - foo
        ***
        - bar

        """#######

        let html = #######"""
        <ul>
        <li>foo</li>
        </ul>
        <hr />
        <ul>
        <li>bar</li>
        </ul>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample28() throws {
        let markdown = #######"""
        Foo
        ***
        bar

        """#######

        let html = #######"""
        <p>Foo</p>
        <hr />
        <p>bar</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample29() throws {
        let markdown = #######"""
        Foo
        ---
        bar

        """#######

        let html = #######"""
        <h2>Foo</h2>
        <p>bar</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample30() throws {
        let markdown = #######"""
        * Foo
        * * *
        * Bar

        """#######

        let html = #######"""
        <ul>
        <li>Foo</li>
        </ul>
        <hr />
        <ul>
        <li>Bar</li>
        </ul>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample31() throws {
        let markdown = #######"""
        - Foo
        - * * *

        """#######

        let html = #######"""
        <ul>
        <li>Foo</li>
        <li>
        <hr />
        </li>
        </ul>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    static var allTests = [
        ("testExample13", testExample13),
        ("testExample14", testExample14),
        ("testExample15", testExample15),
        ("testExample16", testExample16),
        ("testExample17", testExample17),
        ("testExample18", testExample18),
        ("testExample19", testExample19),
        ("testExample20", testExample20),
        ("testExample21", testExample21),
        ("testExample22", testExample22),
        ("testExample23", testExample23),
        ("testExample24", testExample24),
        ("testExample25", testExample25),
        ("testExample26", testExample26),
        ("testExample27", testExample27),
        ("testExample28", testExample28),
        ("testExample29", testExample29),
        ("testExample30", testExample30),
        ("testExample31", testExample31),
    ]
}

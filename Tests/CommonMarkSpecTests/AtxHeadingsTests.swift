// This file was automatically generated and should not be edited.

import XCTest
import CommonMark

final class CommonMarkSpecAtxHeadingsTests: XCTestCase {
    func testExample32() throws {
        let markdown = #######"""
        # foo
        ## foo
        ### foo
        #### foo
        ##### foo
        ###### foo

        """#######

        let html = #######"""
        <h1>foo</h1>
        <h2>foo</h2>
        <h3>foo</h3>
        <h4>foo</h4>
        <h5>foo</h5>
        <h6>foo</h6>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample33() throws {
        let markdown = #######"""
        ####### foo

        """#######

        let html = #######"""
        <p>####### foo</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample34() throws {
        let markdown = #######"""
        #5 bolt
        
        #hashtag

        """#######

        let html = #######"""
        <p>#5 bolt</p>
        <p>#hashtag</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample35() throws {
        let markdown = #######"""
        \## foo

        """#######

        let html = #######"""
        <p>## foo</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample36() throws {
        let markdown = #######"""
        # foo *bar* \*baz\*

        """#######

        let html = #######"""
        <h1>foo <em>bar</em> *baz*</h1>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample37() throws {
        let markdown = #######"""
        #                  foo                     

        """#######

        let html = #######"""
        <h1>foo</h1>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample38() throws {
        let markdown = #######"""
         ### foo
          ## foo
           # foo

        """#######

        let html = #######"""
        <h3>foo</h3>
        <h2>foo</h2>
        <h1>foo</h1>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample39() throws {
        let markdown = #######"""
            # foo

        """#######

        let html = #######"""
        <pre><code># foo
        </code></pre>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample40() throws {
        let markdown = #######"""
        foo
            # bar

        """#######

        let html = #######"""
        <p>foo
        # bar</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample41() throws {
        let markdown = #######"""
        ## foo ##
          ###   bar    ###

        """#######

        let html = #######"""
        <h2>foo</h2>
        <h3>bar</h3>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample42() throws {
        let markdown = #######"""
        # foo ##################################
        ##### foo ##

        """#######

        let html = #######"""
        <h1>foo</h1>
        <h5>foo</h5>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample43() throws {
        let markdown = #######"""
        ### foo ###     

        """#######

        let html = #######"""
        <h3>foo</h3>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample44() throws {
        let markdown = #######"""
        ### foo ### b

        """#######

        let html = #######"""
        <h3>foo ### b</h3>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample45() throws {
        let markdown = #######"""
        # foo#

        """#######

        let html = #######"""
        <h1>foo#</h1>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample46() throws {
        let markdown = #######"""
        ### foo \###
        ## foo #\##
        # foo \#

        """#######

        let html = #######"""
        <h3>foo ###</h3>
        <h2>foo ###</h2>
        <h1>foo #</h1>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample47() throws {
        let markdown = #######"""
        ****
        ## foo
        ****

        """#######

        let html = #######"""
        <hr />
        <h2>foo</h2>
        <hr />

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample48() throws {
        let markdown = #######"""
        Foo bar
        # baz
        Bar foo

        """#######

        let html = #######"""
        <p>Foo bar</p>
        <h1>baz</h1>
        <p>Bar foo</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample49() throws {
        let markdown = #######"""
        ## 
        #
        ### ###

        """#######

        let html = #######"""
        <h2></h2>
        <h1></h1>
        <h3></h3>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

}

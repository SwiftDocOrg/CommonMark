// This file was automatically generated and should not be edited.

import XCTest
import CommonMark

final class CommonMarkSpecImagesTests: XCTestCase {
    func testExample568() throws {
        let markdown = #######"""
        ![foo](/url "title")

        """#######

        let html = #######"""
        <p><img src="/url" alt="foo" title="title" /></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample569() throws {
        let markdown = #######"""
        ![foo *bar*]
        
        [foo *bar*]: train.jpg "train & tracks"

        """#######

        let html = #######"""
        <p><img src="train.jpg" alt="foo bar" title="train &amp; tracks" /></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample570() throws {
        let markdown = #######"""
        ![foo ![bar](/url)](/url2)

        """#######

        let html = #######"""
        <p><img src="/url2" alt="foo bar" /></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample571() throws {
        let markdown = #######"""
        ![foo [bar](/url)](/url2)

        """#######

        let html = #######"""
        <p><img src="/url2" alt="foo bar" /></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample572() throws {
        let markdown = #######"""
        ![foo *bar*][]
        
        [foo *bar*]: train.jpg "train & tracks"

        """#######

        let html = #######"""
        <p><img src="train.jpg" alt="foo bar" title="train &amp; tracks" /></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample573() throws {
        let markdown = #######"""
        ![foo *bar*][foobar]
        
        [FOOBAR]: train.jpg "train & tracks"

        """#######

        let html = #######"""
        <p><img src="train.jpg" alt="foo bar" title="train &amp; tracks" /></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample574() throws {
        let markdown = #######"""
        ![foo](train.jpg)

        """#######

        let html = #######"""
        <p><img src="train.jpg" alt="foo" /></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample575() throws {
        let markdown = #######"""
        My ![foo bar](/path/to/train.jpg  "title"   )

        """#######

        let html = #######"""
        <p>My <img src="/path/to/train.jpg" alt="foo bar" title="title" /></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample576() throws {
        let markdown = #######"""
        ![foo](<url>)

        """#######

        let html = #######"""
        <p><img src="url" alt="foo" /></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample577() throws {
        let markdown = #######"""
        ![](/url)

        """#######

        let html = #######"""
        <p><img src="/url" alt="" /></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample578() throws {
        let markdown = #######"""
        ![foo][bar]
        
        [bar]: /url

        """#######

        let html = #######"""
        <p><img src="/url" alt="foo" /></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample579() throws {
        let markdown = #######"""
        ![foo][bar]
        
        [BAR]: /url

        """#######

        let html = #######"""
        <p><img src="/url" alt="foo" /></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample580() throws {
        let markdown = #######"""
        ![foo][]
        
        [foo]: /url "title"

        """#######

        let html = #######"""
        <p><img src="/url" alt="foo" title="title" /></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample581() throws {
        let markdown = #######"""
        ![*foo* bar][]
        
        [*foo* bar]: /url "title"

        """#######

        let html = #######"""
        <p><img src="/url" alt="foo bar" title="title" /></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample582() throws {
        let markdown = #######"""
        ![Foo][]
        
        [foo]: /url "title"

        """#######

        let html = #######"""
        <p><img src="/url" alt="Foo" title="title" /></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample583() throws {
        let markdown = #######"""
        ![foo] 
        []
        
        [foo]: /url "title"

        """#######

        let html = #######"""
        <p><img src="/url" alt="foo" title="title" />
        []</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample584() throws {
        let markdown = #######"""
        ![foo]
        
        [foo]: /url "title"

        """#######

        let html = #######"""
        <p><img src="/url" alt="foo" title="title" /></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample585() throws {
        let markdown = #######"""
        ![*foo* bar]
        
        [*foo* bar]: /url "title"

        """#######

        let html = #######"""
        <p><img src="/url" alt="foo bar" title="title" /></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample586() throws {
        let markdown = #######"""
        ![[foo]]
        
        [[foo]]: /url "title"

        """#######

        let html = #######"""
        <p>![[foo]]</p>
        <p>[[foo]]: /url &quot;title&quot;</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample587() throws {
        let markdown = #######"""
        ![Foo]
        
        [foo]: /url "title"

        """#######

        let html = #######"""
        <p><img src="/url" alt="Foo" title="title" /></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample588() throws {
        let markdown = #######"""
        !\[foo]
        
        [foo]: /url "title"

        """#######

        let html = #######"""
        <p>![foo]</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample589() throws {
        let markdown = #######"""
        \![foo]
        
        [foo]: /url "title"

        """#######

        let html = #######"""
        <p>!<a href="/url" title="title">foo</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

}

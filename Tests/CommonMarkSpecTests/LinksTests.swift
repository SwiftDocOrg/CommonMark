// This file was automatically generated and should not be edited.

import XCTest
import CommonMark

final class CommonMarkSpecLinksTests: XCTestCase {
    func testExample481() throws {
        let markdown = #######"""
        [link](/uri "title")

        """#######

        let html = #######"""
        <p><a href="/uri" title="title">link</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample482() throws {
        let markdown = #######"""
        [link](/uri)

        """#######

        let html = #######"""
        <p><a href="/uri">link</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample483() throws {
        let markdown = #######"""
        [link]()

        """#######

        let html = #######"""
        <p><a href="">link</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample484() throws {
        let markdown = #######"""
        [link](<>)

        """#######

        let html = #######"""
        <p><a href="">link</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample485() throws {
        let markdown = #######"""
        [link](/my uri)

        """#######

        let html = #######"""
        <p>[link](/my uri)</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample486() throws {
        let markdown = #######"""
        [link](</my uri>)

        """#######

        let html = #######"""
        <p><a href="/my%20uri">link</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample487() throws {
        let markdown = #######"""
        [link](foo
        bar)

        """#######

        let html = #######"""
        <p>[link](foo
        bar)</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample488() throws {
        let markdown = #######"""
        [link](<foo
        bar>)

        """#######

        let html = #######"""
        <p>[link](<foo
        bar>)</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample489() throws {
        let markdown = #######"""
        [a](<b)c>)

        """#######

        let html = #######"""
        <p><a href="b)c">a</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample490() throws {
        let markdown = #######"""
        [link](<foo\>)

        """#######

        let html = #######"""
        <p>[link](&lt;foo&gt;)</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample491() throws {
        let markdown = #######"""
        [a](<b)c
        [a](<b)c>
        [a](<b>c)

        """#######

        let html = #######"""
        <p>[a](&lt;b)c
        [a](&lt;b)c&gt;
        [a](<b>c)</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample492() throws {
        let markdown = #######"""
        [link](\(foo\))

        """#######

        let html = #######"""
        <p><a href="(foo)">link</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample493() throws {
        let markdown = #######"""
        [link](foo(and(bar)))

        """#######

        let html = #######"""
        <p><a href="foo(and(bar))">link</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample494() throws {
        let markdown = #######"""
        [link](foo\(and\(bar\))

        """#######

        let html = #######"""
        <p><a href="foo(and(bar)">link</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample495() throws {
        let markdown = #######"""
        [link](<foo(and(bar)>)

        """#######

        let html = #######"""
        <p><a href="foo(and(bar)">link</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample496() throws {
        let markdown = #######"""
        [link](foo\)\:)

        """#######

        let html = #######"""
        <p><a href="foo):">link</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample497() throws {
        let markdown = #######"""
        [link](#fragment)
        
        [link](http://example.com#fragment)
        
        [link](http://example.com?foo=3#frag)

        """#######

        let html = #######"""
        <p><a href="#fragment">link</a></p>
        <p><a href="http://example.com#fragment">link</a></p>
        <p><a href="http://example.com?foo=3#frag">link</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample498() throws {
        let markdown = #######"""
        [link](foo\bar)

        """#######

        let html = #######"""
        <p><a href="foo%5Cbar">link</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample499() throws {
        let markdown = #######"""
        [link](foo%20b&auml;)

        """#######

        let html = #######"""
        <p><a href="foo%20b%C3%A4">link</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample500() throws {
        let markdown = #######"""
        [link]("title")

        """#######

        let html = #######"""
        <p><a href="%22title%22">link</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample501() throws {
        let markdown = #######"""
        [link](/url "title")
        [link](/url 'title')
        [link](/url (title))

        """#######

        let html = #######"""
        <p><a href="/url" title="title">link</a>
        <a href="/url" title="title">link</a>
        <a href="/url" title="title">link</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample502() throws {
        let markdown = #######"""
        [link](/url "title \"&quot;")

        """#######

        let html = #######"""
        <p><a href="/url" title="title &quot;&quot;">link</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample503() throws {
        let markdown = #######"""
        [link](/url "title")

        """#######

        let html = #######"""
        <p><a href="/url%C2%A0%22title%22">link</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample504() throws {
        let markdown = #######"""
        [link](/url "title "and" title")

        """#######

        let html = #######"""
        <p>[link](/url &quot;title &quot;and&quot; title&quot;)</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample505() throws {
        let markdown = #######"""
        [link](/url 'title "and" title')

        """#######

        let html = #######"""
        <p><a href="/url" title="title &quot;and&quot; title">link</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample506() throws {
        let markdown = #######"""
        [link](   /uri
          "title"  )

        """#######

        let html = #######"""
        <p><a href="/uri" title="title">link</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample507() throws {
        let markdown = #######"""
        [link] (/uri)

        """#######

        let html = #######"""
        <p>[link] (/uri)</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample508() throws {
        let markdown = #######"""
        [link [foo [bar]]](/uri)

        """#######

        let html = #######"""
        <p><a href="/uri">link [foo [bar]]</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample509() throws {
        let markdown = #######"""
        [link] bar](/uri)

        """#######

        let html = #######"""
        <p>[link] bar](/uri)</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample510() throws {
        let markdown = #######"""
        [link [bar](/uri)

        """#######

        let html = #######"""
        <p>[link <a href="/uri">bar</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample511() throws {
        let markdown = #######"""
        [link \[bar](/uri)

        """#######

        let html = #######"""
        <p><a href="/uri">link [bar</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample512() throws {
        let markdown = #######"""
        [link *foo **bar** `#`*](/uri)

        """#######

        let html = #######"""
        <p><a href="/uri">link <em>foo <strong>bar</strong> <code>#</code></em></a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample513() throws {
        let markdown = #######"""
        [![moon](moon.jpg)](/uri)

        """#######

        let html = #######"""
        <p><a href="/uri"><img src="moon.jpg" alt="moon" /></a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample514() throws {
        let markdown = #######"""
        [foo [bar](/uri)](/uri)

        """#######

        let html = #######"""
        <p>[foo <a href="/uri">bar</a>](/uri)</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample515() throws {
        let markdown = #######"""
        [foo *[bar [baz](/uri)](/uri)*](/uri)

        """#######

        let html = #######"""
        <p>[foo <em>[bar <a href="/uri">baz</a>](/uri)</em>](/uri)</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample516() throws {
        let markdown = #######"""
        ![[[foo](uri1)](uri2)](uri3)

        """#######

        let html = #######"""
        <p><img src="uri3" alt="[foo](uri2)" /></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample517() throws {
        let markdown = #######"""
        *[foo*](/uri)

        """#######

        let html = #######"""
        <p>*<a href="/uri">foo*</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample518() throws {
        let markdown = #######"""
        [foo *bar](baz*)

        """#######

        let html = #######"""
        <p><a href="baz*">foo *bar</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample519() throws {
        let markdown = #######"""
        *foo [bar* baz]

        """#######

        let html = #######"""
        <p><em>foo [bar</em> baz]</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample520() throws {
        let markdown = #######"""
        [foo <bar attr="](baz)">

        """#######

        let html = #######"""
        <p>[foo <bar attr="](baz)"></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample521() throws {
        let markdown = #######"""
        [foo`](/uri)`

        """#######

        let html = #######"""
        <p>[foo<code>](/uri)</code></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample522() throws {
        let markdown = #######"""
        [foo<http://example.com/?search=](uri)>

        """#######

        let html = #######"""
        <p>[foo<a href="http://example.com/?search=%5D(uri)">http://example.com/?search=](uri)</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample523() throws {
        let markdown = #######"""
        [foo][bar]
        
        [bar]: /url "title"

        """#######

        let html = #######"""
        <p><a href="/url" title="title">foo</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample524() throws {
        let markdown = #######"""
        [link [foo [bar]]][ref]
        
        [ref]: /uri

        """#######

        let html = #######"""
        <p><a href="/uri">link [foo [bar]]</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample525() throws {
        let markdown = #######"""
        [link \[bar][ref]
        
        [ref]: /uri

        """#######

        let html = #######"""
        <p><a href="/uri">link [bar</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample526() throws {
        let markdown = #######"""
        [link *foo **bar** `#`*][ref]
        
        [ref]: /uri

        """#######

        let html = #######"""
        <p><a href="/uri">link <em>foo <strong>bar</strong> <code>#</code></em></a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample527() throws {
        let markdown = #######"""
        [![moon](moon.jpg)][ref]
        
        [ref]: /uri

        """#######

        let html = #######"""
        <p><a href="/uri"><img src="moon.jpg" alt="moon" /></a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample528() throws {
        let markdown = #######"""
        [foo [bar](/uri)][ref]
        
        [ref]: /uri

        """#######

        let html = #######"""
        <p>[foo <a href="/uri">bar</a>]<a href="/uri">ref</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample529() throws {
        let markdown = #######"""
        [foo *bar [baz][ref]*][ref]
        
        [ref]: /uri

        """#######

        let html = #######"""
        <p>[foo <em>bar <a href="/uri">baz</a></em>]<a href="/uri">ref</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample530() throws {
        let markdown = #######"""
        *[foo*][ref]
        
        [ref]: /uri

        """#######

        let html = #######"""
        <p>*<a href="/uri">foo*</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample531() throws {
        let markdown = #######"""
        [foo *bar][ref]
        
        [ref]: /uri

        """#######

        let html = #######"""
        <p><a href="/uri">foo *bar</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample532() throws {
        let markdown = #######"""
        [foo <bar attr="][ref]">
        
        [ref]: /uri

        """#######

        let html = #######"""
        <p>[foo <bar attr="][ref]"></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample533() throws {
        let markdown = #######"""
        [foo`][ref]`
        
        [ref]: /uri

        """#######

        let html = #######"""
        <p>[foo<code>][ref]</code></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample534() throws {
        let markdown = #######"""
        [foo<http://example.com/?search=][ref]>
        
        [ref]: /uri

        """#######

        let html = #######"""
        <p>[foo<a href="http://example.com/?search=%5D%5Bref%5D">http://example.com/?search=][ref]</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample535() throws {
        let markdown = #######"""
        [foo][BaR]
        
        [bar]: /url "title"

        """#######

        let html = #######"""
        <p><a href="/url" title="title">foo</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample536() throws {
        let markdown = #######"""
        [Толпой][Толпой] is a Russian word.
        
        [ТОЛПОЙ]: /url

        """#######

        let html = #######"""
        <p><a href="/url">Толпой</a> is a Russian word.</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample537() throws {
        let markdown = #######"""
        [Foo
          bar]: /url
        
        [Baz][Foo bar]

        """#######

        let html = #######"""
        <p><a href="/url">Baz</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample538() throws {
        let markdown = #######"""
        [foo] [bar]
        
        [bar]: /url "title"

        """#######

        let html = #######"""
        <p>[foo] <a href="/url" title="title">bar</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample539() throws {
        let markdown = #######"""
        [foo]
        [bar]
        
        [bar]: /url "title"

        """#######

        let html = #######"""
        <p>[foo]
        <a href="/url" title="title">bar</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample540() throws {
        let markdown = #######"""
        [foo]: /url1
        
        [foo]: /url2
        
        [bar][foo]

        """#######

        let html = #######"""
        <p><a href="/url1">bar</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample541() throws {
        let markdown = #######"""
        [bar][foo\!]
        
        [foo!]: /url

        """#######

        let html = #######"""
        <p>[bar][foo!]</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample542() throws {
        let markdown = #######"""
        [foo][ref[]
        
        [ref[]: /uri

        """#######

        let html = #######"""
        <p>[foo][ref[]</p>
        <p>[ref[]: /uri</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample543() throws {
        let markdown = #######"""
        [foo][ref[bar]]
        
        [ref[bar]]: /uri

        """#######

        let html = #######"""
        <p>[foo][ref[bar]]</p>
        <p>[ref[bar]]: /uri</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample544() throws {
        let markdown = #######"""
        [[[foo]]]
        
        [[[foo]]]: /url

        """#######

        let html = #######"""
        <p>[[[foo]]]</p>
        <p>[[[foo]]]: /url</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample545() throws {
        let markdown = #######"""
        [foo][ref\[]
        
        [ref\[]: /uri

        """#######

        let html = #######"""
        <p><a href="/uri">foo</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample546() throws {
        let markdown = #######"""
        [bar\\]: /uri
        
        [bar\\]

        """#######

        let html = #######"""
        <p><a href="/uri">bar\</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample547() throws {
        let markdown = #######"""
        []
        
        []: /uri

        """#######

        let html = #######"""
        <p>[]</p>
        <p>[]: /uri</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample548() throws {
        let markdown = #######"""
        [
         ]
        
        [
         ]: /uri

        """#######

        let html = #######"""
        <p>[
        ]</p>
        <p>[
        ]: /uri</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample549() throws {
        let markdown = #######"""
        [foo][]
        
        [foo]: /url "title"

        """#######

        let html = #######"""
        <p><a href="/url" title="title">foo</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample550() throws {
        let markdown = #######"""
        [*foo* bar][]
        
        [*foo* bar]: /url "title"

        """#######

        let html = #######"""
        <p><a href="/url" title="title"><em>foo</em> bar</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample551() throws {
        let markdown = #######"""
        [Foo][]
        
        [foo]: /url "title"

        """#######

        let html = #######"""
        <p><a href="/url" title="title">Foo</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample552() throws {
        let markdown = #######"""
        [foo] 
        []
        
        [foo]: /url "title"

        """#######

        let html = #######"""
        <p><a href="/url" title="title">foo</a>
        []</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample553() throws {
        let markdown = #######"""
        [foo]
        
        [foo]: /url "title"

        """#######

        let html = #######"""
        <p><a href="/url" title="title">foo</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample554() throws {
        let markdown = #######"""
        [*foo* bar]
        
        [*foo* bar]: /url "title"

        """#######

        let html = #######"""
        <p><a href="/url" title="title"><em>foo</em> bar</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample555() throws {
        let markdown = #######"""
        [[*foo* bar]]
        
        [*foo* bar]: /url "title"

        """#######

        let html = #######"""
        <p>[<a href="/url" title="title"><em>foo</em> bar</a>]</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample556() throws {
        let markdown = #######"""
        [[bar [foo]
        
        [foo]: /url

        """#######

        let html = #######"""
        <p>[[bar <a href="/url">foo</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample557() throws {
        let markdown = #######"""
        [Foo]
        
        [foo]: /url "title"

        """#######

        let html = #######"""
        <p><a href="/url" title="title">Foo</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample558() throws {
        let markdown = #######"""
        [foo] bar
        
        [foo]: /url

        """#######

        let html = #######"""
        <p><a href="/url">foo</a> bar</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample559() throws {
        let markdown = #######"""
        \[foo]
        
        [foo]: /url "title"

        """#######

        let html = #######"""
        <p>[foo]</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample560() throws {
        let markdown = #######"""
        [foo*]: /url
        
        *[foo*]

        """#######

        let html = #######"""
        <p>*<a href="/url">foo*</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample561() throws {
        let markdown = #######"""
        [foo][bar]
        
        [foo]: /url1
        [bar]: /url2

        """#######

        let html = #######"""
        <p><a href="/url2">foo</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample562() throws {
        let markdown = #######"""
        [foo][]
        
        [foo]: /url1

        """#######

        let html = #######"""
        <p><a href="/url1">foo</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample563() throws {
        let markdown = #######"""
        [foo]()
        
        [foo]: /url1

        """#######

        let html = #######"""
        <p><a href="">foo</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample564() throws {
        let markdown = #######"""
        [foo](not a link)
        
        [foo]: /url1

        """#######

        let html = #######"""
        <p><a href="/url1">foo</a>(not a link)</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample565() throws {
        let markdown = #######"""
        [foo][bar][baz]
        
        [baz]: /url

        """#######

        let html = #######"""
        <p>[foo]<a href="/url">bar</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample566() throws {
        let markdown = #######"""
        [foo][bar][baz]
        
        [baz]: /url1
        [bar]: /url2

        """#######

        let html = #######"""
        <p><a href="/url2">foo</a><a href="/url1">baz</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample567() throws {
        let markdown = #######"""
        [foo][bar][baz]
        
        [baz]: /url1
        [foo]: /url2

        """#######

        let html = #######"""
        <p>[foo]<a href="/url1">bar</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    static var allTests = [
        ("testExample481", testExample481),
        ("testExample482", testExample482),
        ("testExample483", testExample483),
        ("testExample484", testExample484),
        ("testExample485", testExample485),
        ("testExample486", testExample486),
        ("testExample487", testExample487),
        ("testExample488", testExample488),
        ("testExample489", testExample489),
        ("testExample490", testExample490),
        ("testExample491", testExample491),
        ("testExample492", testExample492),
        ("testExample493", testExample493),
        ("testExample494", testExample494),
        ("testExample495", testExample495),
        ("testExample496", testExample496),
        ("testExample497", testExample497),
        ("testExample498", testExample498),
        ("testExample499", testExample499),
        ("testExample500", testExample500),
        ("testExample501", testExample501),
        ("testExample502", testExample502),
        ("testExample503", testExample503),
        ("testExample504", testExample504),
        ("testExample505", testExample505),
        ("testExample506", testExample506),
        ("testExample507", testExample507),
        ("testExample508", testExample508),
        ("testExample509", testExample509),
        ("testExample510", testExample510),
        ("testExample511", testExample511),
        ("testExample512", testExample512),
        ("testExample513", testExample513),
        ("testExample514", testExample514),
        ("testExample515", testExample515),
        ("testExample516", testExample516),
        ("testExample517", testExample517),
        ("testExample518", testExample518),
        ("testExample519", testExample519),
        ("testExample520", testExample520),
        ("testExample521", testExample521),
        ("testExample522", testExample522),
        ("testExample523", testExample523),
        ("testExample524", testExample524),
        ("testExample525", testExample525),
        ("testExample526", testExample526),
        ("testExample527", testExample527),
        ("testExample528", testExample528),
        ("testExample529", testExample529),
        ("testExample530", testExample530),
        ("testExample531", testExample531),
        ("testExample532", testExample532),
        ("testExample533", testExample533),
        ("testExample534", testExample534),
        ("testExample535", testExample535),
        ("testExample536", testExample536),
        ("testExample537", testExample537),
        ("testExample538", testExample538),
        ("testExample539", testExample539),
        ("testExample540", testExample540),
        ("testExample541", testExample541),
        ("testExample542", testExample542),
        ("testExample543", testExample543),
        ("testExample544", testExample544),
        ("testExample545", testExample545),
        ("testExample546", testExample546),
        ("testExample547", testExample547),
        ("testExample548", testExample548),
        ("testExample549", testExample549),
        ("testExample550", testExample550),
        ("testExample551", testExample551),
        ("testExample552", testExample552),
        ("testExample553", testExample553),
        ("testExample554", testExample554),
        ("testExample555", testExample555),
        ("testExample556", testExample556),
        ("testExample557", testExample557),
        ("testExample558", testExample558),
        ("testExample559", testExample559),
        ("testExample560", testExample560),
        ("testExample561", testExample561),
        ("testExample562", testExample562),
        ("testExample563", testExample563),
        ("testExample564", testExample564),
        ("testExample565", testExample565),
        ("testExample566", testExample566),
        ("testExample567", testExample567),
    ]
}

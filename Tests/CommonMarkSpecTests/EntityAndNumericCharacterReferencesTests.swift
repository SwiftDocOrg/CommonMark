// This file was automatically generated and should not be edited.

import XCTest
import CommonMark

final class CommonMarkSpecEntityAndNumericCharacterReferencesTests: XCTestCase {
    func testExample311() throws {
        let markdown = #######"""
        &nbsp; &amp; &copy; &AElig; &Dcaron;
        &frac34; &HilbertSpace; &DifferentialD;
        &ClockwiseContourIntegral; &ngE;

        """#######

        let html = #######"""
        <p>  &amp; © Æ Ď
        ¾ ℋ ⅆ
        ∲ ≧̸</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample312() throws {
        let markdown = #######"""
        &#35; &#1234; &#992; &#0;

        """#######

        let html = #######"""
        <p># Ӓ Ϡ �</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample313() throws {
        let markdown = #######"""
        &#X22; &#XD06; &#xcab;

        """#######

        let html = #######"""
        <p>&quot; ആ ಫ</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample314() throws {
        let markdown = #######"""
        &nbsp &x; &#; &#x;
        &#987654321;
        &#abcdef0;
        &ThisIsNotDefined; &hi?;

        """#######

        let html = #######"""
        <p>&amp;nbsp &amp;x; &amp;#; &amp;#x;
        &amp;#987654321;
        &amp;#abcdef0;
        &amp;ThisIsNotDefined; &amp;hi?;</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample315() throws {
        let markdown = #######"""
        &copy

        """#######

        let html = #######"""
        <p>&amp;copy</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample316() throws {
        let markdown = #######"""
        &MadeUpEntity;

        """#######

        let html = #######"""
        <p>&amp;MadeUpEntity;</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample317() throws {
        let markdown = #######"""
        <a href="&ouml;&ouml;.html">

        """#######

        let html = #######"""
        <a href="&ouml;&ouml;.html">

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample318() throws {
        let markdown = #######"""
        [foo](/f&ouml;&ouml; "f&ouml;&ouml;")

        """#######

        let html = #######"""
        <p><a href="/f%C3%B6%C3%B6" title="föö">foo</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample319() throws {
        let markdown = #######"""
        [foo]
        
        [foo]: /f&ouml;&ouml; "f&ouml;&ouml;"

        """#######

        let html = #######"""
        <p><a href="/f%C3%B6%C3%B6" title="föö">foo</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample320() throws {
        let markdown = #######"""
        ``` f&ouml;&ouml;
        foo
        ```

        """#######

        let html = #######"""
        <pre><code class="language-föö">foo
        </code></pre>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample321() throws {
        let markdown = #######"""
        `f&ouml;&ouml;`

        """#######

        let html = #######"""
        <p><code>f&amp;ouml;&amp;ouml;</code></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample322() throws {
        let markdown = #######"""
            f&ouml;f&ouml;

        """#######

        let html = #######"""
        <pre><code>f&amp;ouml;f&amp;ouml;
        </code></pre>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample323() throws {
        let markdown = #######"""
        &#42;foo&#42;
        *foo*

        """#######

        let html = #######"""
        <p>*foo*
        <em>foo</em></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample324() throws {
        let markdown = #######"""
        &#42; foo
        
        * foo

        """#######

        let html = #######"""
        <p>* foo</p>
        <ul>
        <li>foo</li>
        </ul>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample325() throws {
        let markdown = #######"""
        foo&#10;&#10;bar

        """#######

        let html = #######"""
        <p>foo
        
        bar</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample326() throws {
        let markdown = #######"""
        &#9;foo

        """#######

        let html = #######"""
        <p>	foo</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample327() throws {
        let markdown = #######"""
        [a](url &quot;tit&quot;)

        """#######

        let html = #######"""
        <p>[a](url &quot;tit&quot;)</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

}

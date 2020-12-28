// This file was automatically generated and should not be edited.

import XCTest
import CommonMark

final class CommonMarkSpecRawHtmlTests: XCTestCase {
    func testExample609() throws {
        let markdown = #######"""
        <a><bab><c2c>

        """#######

        let html = #######"""
        <p><a><bab><c2c></p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample610() throws {
        let markdown = #######"""
        <a/><b2/>

        """#######

        let html = #######"""
        <p><a/><b2/></p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample611() throws {
        let markdown = #######"""
        <a  /><b2
        data="foo" >

        """#######

        let html = #######"""
        <p><a  /><b2
        data="foo" ></p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample612() throws {
        let markdown = #######"""
        <a foo="bar" bam = 'baz <em>"</em>'
        _boolean zoop:33=zoop:33 />

        """#######

        let html = #######"""
        <p><a foo="bar" bam = 'baz <em>"</em>'
        _boolean zoop:33=zoop:33 /></p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample613() throws {
        let markdown = #######"""
        Foo <responsive-image src="foo.jpg" />

        """#######

        let html = #######"""
        <p>Foo <responsive-image src="foo.jpg" /></p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample614() throws {
        let markdown = #######"""
        <33> <__>

        """#######

        let html = #######"""
        <p>&lt;33&gt; &lt;__&gt;</p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample615() throws {
        let markdown = #######"""
        <a h*#ref="hi">

        """#######

        let html = #######"""
        <p>&lt;a h*#ref=&quot;hi&quot;&gt;</p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample616() throws {
        let markdown = #######"""
        <a href="hi'> <a href=hi'>

        """#######

        let html = #######"""
        <p>&lt;a href=&quot;hi'&gt; &lt;a href=hi'&gt;</p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample617() throws {
        let markdown = #######"""
        < a><
        foo><bar/ >
        <foo bar=baz
        bim!bop />

        """#######

        let html = #######"""
        <p>&lt; a&gt;&lt;
        foo&gt;&lt;bar/ &gt;
        &lt;foo bar=baz
        bim!bop /&gt;</p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample618() throws {
        let markdown = #######"""
        <a href='bar'title=title>

        """#######

        let html = #######"""
        <p>&lt;a href='bar'title=title&gt;</p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample619() throws {
        let markdown = #######"""
        </a></foo >

        """#######

        let html = #######"""
        <p></a></foo ></p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample620() throws {
        let markdown = #######"""
        </a href="foo">

        """#######

        let html = #######"""
        <p>&lt;/a href=&quot;foo&quot;&gt;</p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample621() throws {
        let markdown = #######"""
        foo <!-- this is a
        comment - with hyphen -->

        """#######

        let html = #######"""
        <p>foo <!-- this is a
        comment - with hyphen --></p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample622() throws {
        let markdown = #######"""
        foo <!-- not a comment -- two hyphens -->

        """#######

        let html = #######"""
        <p>foo &lt;!-- not a comment -- two hyphens --&gt;</p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample623() throws {
        let markdown = #######"""
        foo <!--> foo -->
        
        foo <!-- foo--->

        """#######

        let html = #######"""
        <p>foo &lt;!--&gt; foo --&gt;</p>
        <p>foo &lt;!-- foo---&gt;</p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample624() throws {
        let markdown = #######"""
        foo <?php echo $a; ?>

        """#######

        let html = #######"""
        <p>foo <?php echo $a; ?></p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample625() throws {
        let markdown = #######"""
        foo <!ELEMENT br EMPTY>

        """#######

        let html = #######"""
        <p>foo <!ELEMENT br EMPTY></p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample626() throws {
        let markdown = #######"""
        foo <![CDATA[>&<]]>

        """#######

        let html = #######"""
        <p>foo <![CDATA[>&<]]></p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample627() throws {
        let markdown = #######"""
        foo <a href="&ouml;">

        """#######

        let html = #######"""
        <p>foo <a href="&ouml;"></p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample628() throws {
        let markdown = #######"""
        foo <a href="\*">

        """#######

        let html = #######"""
        <p>foo <a href="\*"></p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample629() throws {
        let markdown = #######"""
        <a href="\"">

        """#######

        let html = #######"""
        <p>&lt;a href=&quot;&quot;&quot;&gt;</p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

}

import XCTest
import CommonMark

final class DocumentRenderingTests: XCTestCase {
    func testDocumentCommonMarkRendering() throws {
        let document = try Document(Fixtures.udhr)

        let actual = document.render(format: .commonmark, width: 60)
        let expected = #"""
        # [Universal Declaration of Human Rights](https://www.un.org/en/universal-declaration-human-rights/ "View full version")

        ## Article 1.

        All human beings are born free and equal in dignity and
        rights. They are endowed with reason and conscience and
        should act towards one another in a spirit of brotherhood.

        """#

        XCTAssertEqual(actual, expected)
    }

    func testNodeCommonMarkRendering() throws {
        let document = try Document(Fixtures.udhr)

        for child in document.children {
            XCTAssertEqual(child.render(format: .commonmark), child.description)
        }
    }

    func testDocumentHTMLRendering() throws {
        let document = try Document(Fixtures.udhr)

        let actual = document.render(format: .html)
        let expected = #"""
        <h1><a href="https://www.un.org/en/universal-declaration-human-rights/" title="View full version">Universal Declaration of Human Rights</a></h1>
        <h2>Article 1.</h2>
        <p>All human beings are born free and equal in dignity and rights.
        They are endowed with reason and conscience
        and should act towards one another in a spirit of brotherhood.</p>

        """#

        XCTAssertEqual(actual, expected)
    }

    func testNodeHTMLRendering() throws {
        let document = try Document(Fixtures.udhr)

        let actual = document.render(format: .html)
        let expected = document.children.map {
            $0.render(format: .html)
        }.joined()

        XCTAssertEqual(actual, expected)
    }

    func testDocumentXMLRendering() throws {
        let document = try Document(Fixtures.udhr)

        let actual = document.render(format: .xml)
        let expected = #"""
        <?xml version="1.0" encoding="UTF-8"?>
        <!DOCTYPE document SYSTEM "CommonMark.dtd">
        <document xmlns="http://commonmark.org/xml/1.0">
          <heading level="1">
            <link destination="https://www.un.org/en/universal-declaration-human-rights/" title="View full version">
              <text xml:space="preserve">Universal Declaration of Human Rights</text>
            </link>
          </heading>
          <heading level="2">
            <text xml:space="preserve">Article 1.</text>
          </heading>
          <paragraph>
            <text xml:space="preserve">All human beings are born free and equal in dignity and rights.</text>
            <softbreak />
            <text xml:space="preserve">They are endowed with reason and conscience</text>
            <softbreak />
            <text xml:space="preserve">and should act towards one another in a spirit of brotherhood.</text>
          </paragraph>
        </document>

        """#

        XCTAssertEqual(actual, expected)
    }

    func testDocumentLaTeXRendering() throws {
        let document = try Document(Fixtures.udhr)

        let actual = document.render(format: .latex)
        let expected = #"""
        \section{\href{https://www.un.org/en/universal-declaration-human-rights/}{Universal Declaration of Human Rights}}

        \subsection{Article 1.}

        All human beings are born free and equal in dignity and rights.
        They are endowed with reason and conscience
        and should act towards one another in a spirit of brotherhood.

        """#

        XCTAssertEqual(actual, expected)
    }

    func testDocumentManpageRendering() throws {
        let document = try Document(Fixtures.udhr)

        let actual = document.render(format: .manpage, width: 60)
        let expected = #"""
        .SH
        Universal Declaration of Human
        Rights (https://www.un.org/en/universal\-declaration\-human\-rights/)
        .SS
        Article 1.
        .PP
        All human beings are born free and equal in dignity and
        rights. They are endowed with reason and conscience and
        should act towards one another in a spirit of brotherhood.

        """#

        XCTAssertEqual(actual, expected)
    }
}

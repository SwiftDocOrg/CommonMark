import XCTest
import CommonMark

final class DocumentTests: XCTestCase {
    
    // MARK: - Creation

    func testDocumentCreation() throws {
        let link = Link(urlString: "https://www.un.org/en/universal-declaration-human-rights/",
                        title: "View full version",
                        text: "Universal Declaration of Human Rights")
        let heading = Heading(level: 1, children: [link])

        let subheading = Heading(level: 2, text: "Article 1.")

        let paragraph = Paragraph(text: #"""
        All human beings are born free and equal in dignity and rights.
        They are endowed with reason and conscience
        and should act towards one another in a spirit of brotherhood.
        """#, replacingNewLinesWithBreaks: true)

        let document = Document(children: [heading, subheading, paragraph])

        let actual = document.description
        let expected = try Document(Fixtures.udhr).description

        XCTAssertEqual(actual, expected)
    }

    // MARK: - Parsing

    func testDocumentParsing() throws {
        let document = try Document(Fixtures.udhr)

        XCTAssertEqual(document.children.count, 3)

        let heading = document.children[0] as! Heading
        XCTAssertEqual(heading.level, 1)
        XCTAssertEqual(heading.children.count, 1)
        XCTAssertEqual(heading.parent, document)

        let link = heading.children[0] as! Link
        XCTAssertEqual(link.urlString, "https://www.un.org/en/universal-declaration-human-rights/")
        XCTAssertEqual(link.title, "View full version")
        XCTAssertEqual(link.parent, heading)

        let subheading = document.children[1] as! Heading
        XCTAssertEqual(subheading.level, 2)
        XCTAssertEqual(subheading.children.count, 1)
        XCTAssertEqual(subheading.parent, document)

        let subheadingText = subheading.children[0] as! Text
        XCTAssertEqual(subheadingText.literal, "Article 1.")
        XCTAssertEqual(subheadingText.parent, subheading)

        let paragraph = document.children[2] as! Paragraph
        XCTAssert(paragraph.description.starts(with: "All human beings"))
        XCTAssertEqual(paragraph.range.lowerBound.line, 5)
        XCTAssertEqual(paragraph.range.lowerBound.column, 1)
        XCTAssertEqual(paragraph.range.upperBound.line, 7)
        XCTAssertEqual(paragraph.range.upperBound.column, 62)
        XCTAssertEqual(paragraph.parent, document)
    }

    // https://github.com/SwiftDocOrg/CommonMark/issues/19
    func testLinkParsing() throws {
        let document = try Document(#"""
        [Universal Declaration of Human Rights](https://www.un.org/en/universal-declaration-human-rights/ "View full version")
        """#)

        let paragraph = document.children[0] as! Paragraph
        XCTAssertEqual(paragraph.children.count, 1)
        XCTAssertEqual(paragraph.parent, document)

        let link = paragraph.children[0] as! Link
        XCTAssertEqual(link.urlString, "https://www.un.org/en/universal-declaration-human-rights/")
        XCTAssertEqual(link.title, "View full version")
        XCTAssertEqual(link.parent, paragraph)

        let text = link.children[0] as! Text
        XCTAssertEqual(text.literal, "Universal Declaration of Human Rights")
        XCTAssertEqual(text.parent, link)
    }

    // https://github.com/SwiftDocOrg/CommonMark/issues/1
    func testInvalidRange() throws {
        let commonmark = "* #"

        let document = try Document(commonmark)

        let list = document.children.first as! List
        let item = list.children.first! as List.Item
        let heading = item.children.first as! Heading
        XCTAssertEqual(heading.range.lowerBound.line, 1)
        XCTAssertEqual(heading.range.lowerBound.column, 3)
        XCTAssertEqual(heading.range.upperBound.line, 1)
        XCTAssertEqual(heading.range.upperBound.column, 3)
    }

    // https://github.com/SwiftDocOrg/CommonMark/issues/20
    func testParseWithoutOptions() throws {
        let commonmark = """
        single-dash: -
        double-dash: --
        triple-dash: ---
        single-quote: ''
        double-quote: ""
        single-period: .
        double-period: ..
        triple-period: ...
        """

        let document = try Document(commonmark)

        let paragraph = document.children.first as! Paragraph
        let paragraphText = paragraph.description.trimmingCharacters(
            in: .whitespacesAndNewlines
        )

        // Without smart options we expect no smart replacements to happen:

        let actual = paragraphText
        let expected = commonmark

        XCTAssertEqual(actual, expected)
    }

    // https://github.com/SwiftDocOrg/CommonMark/issues/20
    func testParseWithSmartOptions() throws {
        let commonmark = """
        single-dash: -
        double-dash: --
        triple-dash: ---
        single-quote: ''
        double-quote: ""
        single-period: .
        double-period: ..
        triple-period: ...
        """

        let document = try Document(commonmark, options: [.smart])

        let paragraph = document.children.first as! Paragraph
        let paragraphText = paragraph.description.trimmingCharacters(
            in: .whitespacesAndNewlines
        )

        // With smart options we expect the following smart replacements:
        //
        // single-dash -> no change
        // double-dash -> n-dash
        // triple-dash -> m-dash
        // single-quote -> curly single quotes
        // double-quote -> curly double quotes
        // single-period -> no change
        // double-period -> no change
        // triple-period -> ellipsis

        let actual = paragraphText
        let expected = """
        single-dash: -
        double-dash: –
        triple-dash: —
        single-quote: ‘’
        double-quote: “”
        single-period: .
        double-period: ..
        triple-period: …
        """

        XCTAssertEqual(actual, expected)
    }

    // MARK: - Rendering

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

    // https://github.com/SwiftDocOrg/CommonMark/issues/19
    func testLinkCommonMarkRendering() throws {
        let document = try Document(#"""
        [Universal Declaration of Human Rights](https://www.un.org/en/universal-declaration-human-rights/ "View full version")
        """#)

        let paragraph = document.children[0] as! Paragraph
        let link = paragraph.children[0] as! Link

        let actual = link.render(format: .commonmark)
        let expected = #"""
        [Universal Declaration of Human Rights](https://www.un.org/en/universal-declaration-human-rights/ "View full version")

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


    // MARK: - Coding

    func testDocumentCodingRoundTrip() throws {
        let document = try Document(Fixtures.udhr)

        // Workaround for "Top-level Document encoded as string JSON fragment."
        let encoded = try JSONEncoder().encode([document])
        let decoded = try JSONDecoder().decode([Document].self, from: encoded)[0]

        let actual = decoded.render(format: .commonmark)
        let expected = document.render(format: .commonmark)

        XCTAssertEqual(actual, expected)
    }

    func testBlockElementCodingRoundTrip() throws {
        let document = try Document(Fixtures.udhr)

        let heading = document.children.first! as! Heading

        // Workaround for "Top-level Heading encoded as string JSON fragment."
        let encoded = try JSONEncoder().encode([heading])
        let decoded = try JSONDecoder().decode([Heading].self, from: encoded)[0]

        let actual = try Document(decoded.description).render(format: .commonmark)
        let expected = try Document(heading.description).render(format: .commonmark)

        XCTAssertEqual(actual, expected)
    }

    func testInlineElementCodingRoundTrip() throws {
        let document = try Document(Fixtures.udhr)

        let heading = document.children.first! as! Heading
        let link = heading.children.first! as! Link

        // Workaround for "Top-level Link encoded as string JSON fragment."
        let encoded = try JSONEncoder().encode([link])
        let decoded = try JSONDecoder().decode([Link].self, from: encoded)[0]

        let actual = try Document(decoded.description).render(format: .commonmark)
        let expected = try Document(link.description).render(format: .commonmark)

        XCTAssertEqual(actual, expected)
    }

}

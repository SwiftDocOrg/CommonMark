import XCTest
import CommonMark

final class DocumentParsingTests: XCTestCase {
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
}

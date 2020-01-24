import XCTest
import CommonMark

final class DocumentParsingTests: XCTestCase {
    func testDocumentParsing() throws {
        let document = try Document(Fixtures.uhdr)

        XCTAssertEqual(document.children.count, 3)

        let heading = document.children[0] as! Heading
        XCTAssertEqual(heading.level, 1)
        XCTAssertEqual(heading.children.count, 1)

        let link = heading.children[0] as! Link
        XCTAssertEqual(link.urlString, "https://www.un.org/en/universal-declaration-human-rights/")
        XCTAssertEqual(link.title, "View full version")

        let subheading = document.children[1] as! Heading
        XCTAssertEqual(subheading.level, 2)
        XCTAssertEqual(subheading.children.count, 1)

        let subheadingText = subheading.children[0] as! Text
        XCTAssertEqual(subheadingText.literal, "Article 1.")

        let paragraph = document.children[2] as! Paragraph
        XCTAssert(paragraph.description.starts(with: "All human beings"))
        XCTAssertEqual(paragraph.range.lowerBound.line, 5)
        XCTAssertEqual(paragraph.range.lowerBound.column, 1)
        XCTAssertEqual(paragraph.range.upperBound.line, 7)
        XCTAssertEqual(paragraph.range.upperBound.column, 62)
    }

    static var allTests = [
        ("testDocumentParsing", testDocumentParsing),
    ]
}

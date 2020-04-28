import XCTest
import CommonMark

final class DocumentCreationTests: XCTestCase {
    func testDocumentCreation() throws {
        let link = Link(urlString: "https://www.un.org/en/universal-declaration-human-rights/", title: "View full version", text: "Universal Declaration of Human Rights")
        let heading = Heading(level: 1, children: [link])

        let subheading = Heading(level: 2, text: "Article 1.")

        let paragraph = Paragraph(text: #"""
        All human beings are born free and equal in dignity and rights.
        They are endowed with reason and conscience
        and should act towards one another in a spirit of brotherhood.
        """#, replacingNewLinesWithBreaks: true)

        let document = Document(children: [heading, subheading, paragraph])

        let expected = try Document(Fixtures.udhr)

        XCTAssertEqual(document.description, expected.description)
    }
}

import XCTest
import CommonMark

final class DocumentCodingTests: XCTestCase {
    func testDocumentCodingRoundTrip() throws {
        let document = try Document(Fixtures.udhr)

        // Workaround for "Top-level Document encoded as string JSON fragment."
        let encoded = try JSONEncoder().encode([document])
        let decoded = try JSONDecoder().decode([Document].self, from: encoded)[0]

        let expected = document.render(format: .commonmark)
        let actual = decoded.render(format: .commonmark)

        XCTAssertEqual(expected, actual)
    }

    func testBlockElementCodingRoundTrip() throws {
        let document = try Document(Fixtures.udhr)

        let heading = document.children.first! as! Heading

        // Workaround for "Top-level Heading encoded as string JSON fragment."
        let encoded = try JSONEncoder().encode([heading])
        let decoded = try JSONDecoder().decode([Heading].self, from: encoded)[0]

        let expected = try Document(heading.description).render(format: .commonmark)
        let actual = try Document(decoded.description).render(format: .commonmark)

        XCTAssertEqual(expected, actual)
    }

    func testInlineElementCodingRoundTrip() throws {
        let document = try Document(Fixtures.udhr)

        let heading = document.children.first! as! Heading
        let link = heading.children.first! as! Link

        // Workaround for "Top-level Link encoded as string JSON fragment."
        let encoded = try JSONEncoder().encode([link])
        let decoded = try JSONDecoder().decode([Link].self, from: encoded)[0]

        let expected = try Document(link.description).render(format: .commonmark)
        let actual = try Document(decoded.description).render(format: .commonmark)

        XCTAssertEqual(expected, actual)
    }
}

import XCTest
import CommonMark

final class DocumentCodingTests: XCTestCase {
    func testDocumentCodingRoundTrip() throws {
        let document = try Document(Fixtures.uhdr)

        // Workaround for "Top-level Document encoded as string JSON fragment."
        let encoded = try JSONEncoder().encode([document])
        let decoded = try JSONDecoder().decode([Document].self, from: encoded)

        let expected = document.render(format: .html)
        let actual = decoded[0].render(format: .html)

        XCTAssertEqual(expected, actual)
    }

    func testBlockElementCodingRoundTrip() throws {
        let document = try Document(Fixtures.uhdr)

        let heading = document.children.first! as! Heading

        // Workaround for "Top-level Heading encoded as string JSON fragment."
        let encoded = try JSONEncoder().encode([heading])
        let decoded = try JSONDecoder().decode([Heading].self, from: encoded)

        let expected = try Document(heading.description).render(format: .html)
        let actual = try Document(decoded[0].description).render(format: .html)

        XCTAssertEqual(expected, actual)
    }

    func testInlineElementCodingRoundTrip() throws {
        let document = try Document(Fixtures.uhdr)

        let heading = document.children.first! as! Heading
        let link = heading.children.first! as! Link

        // Workaround for "Top-level Link encoded as string JSON fragment."
        let encoded = try JSONEncoder().encode([link])
        let decoded = try JSONDecoder().decode([Link].self, from: encoded)

        let expected = try Document(link.description).render(format: .html)
        let actual = try Document(decoded[0].description).render(format: .html)

        XCTAssertEqual(expected, actual)
    }
}

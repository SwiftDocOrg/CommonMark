import XCTest
import CommonMark

final class DocumentCodingTests: XCTestCase {
    func testDocumentCodingRoundTrip() throws {
        let document = try Document(Fixtures.uhdr)

        let encoder = JSONEncoder()
        let encoded = try encoder.encode(document)

        let decoder = JSONDecoder()
        let decoded = try decoder.decode(Document.self, from: encoded)

        let expected = document.render(format: .html)
        let actual = decoded.render(format: .html)

        XCTAssertEqual(expected, actual)
    }

    func testBlockElementCodingRoundTrip() throws {
        let document = try Document(Fixtures.uhdr)

        let heading = document.children.first! as! Heading

        let encoder = JSONEncoder()
        let encoded = try encoder.encode(heading)

        let decoder = JSONDecoder()
        let decoded = try decoder.decode(Heading.self, from: encoded)

        let expected = try Document(heading.description).render(format: .html)
        let actual = try Document(decoded.description).render(format: .html)

        XCTAssertEqual(expected, actual)
    }

    func testInlineElementCodingRoundTrip() throws {
        let document = try Document(Fixtures.uhdr)

        let heading = document.children.first! as! Heading
        let link = heading.children.first! as! Link

        let encoder = JSONEncoder()
        let encoded = try encoder.encode(link)

        let decoder = JSONDecoder()
        let decoded = try decoder.decode(Link.self, from: encoded)

        let expected = try Document(link.description).render(format: .html)
        let actual = try Document(decoded.description).render(format: .html)

        XCTAssertEqual(expected, actual)
    }
}

import XCTest
import CommonMark

final class VisitorTests: XCTestCase {
    func testVisitorVisitingChildren() throws {
        final class TestVisitor: Visitor {
            var numberOfHeadings: Int = 0
            var numberOfParagraphs: Int = 0
            var numberOfLinks: Int = 0

            var defaultContinueKind: VisitorContinueKind {
                return .visitChildren
            }

            func visit(heading: Heading) -> VisitorContinueKind {
                self.numberOfHeadings += 1

                return .visitChildren
            }

            func visit(paragraph: Paragraph) -> VisitorContinueKind {
                self.numberOfParagraphs += 1

                return .visitChildren
            }

            func visit(link: Link) -> VisitorContinueKind {
                self.numberOfLinks += 1

                return .visitChildren
            }
        }

        let document = try Document(Fixtures.uhdr)
        let visitor = TestVisitor()

        visitor.walk(document)

        XCTAssertEqual(visitor.numberOfHeadings, 2)
        XCTAssertEqual(visitor.numberOfParagraphs, 1)
        XCTAssertEqual(visitor.numberOfLinks, 1)
    }

    func testVisitorSkippingChildren() throws {
        final class TestVisitor: Visitor {
            var numberOfHeadings: Int = 0
            var numberOfParagraphs: Int = 0
            var numberOfLinks: Int = 0

            var defaultContinueKind: VisitorContinueKind {
                return .visitChildren
            }
            
            func visit(heading: Heading) -> VisitorContinueKind {
                self.numberOfHeadings += 1

                return .skipChildren
            }

            func visit(paragraph: Paragraph) -> VisitorContinueKind {
                self.numberOfParagraphs += 1

                return .skipChildren
            }

            func visit(link: Link) -> VisitorContinueKind {
                self.numberOfLinks += 1

                return .skipChildren
            }
        }

        let document = try Document(Fixtures.uhdr)
        let visitor = TestVisitor()

        visitor.walk(document)

        XCTAssertEqual(visitor.numberOfHeadings, 2)
        XCTAssertEqual(visitor.numberOfParagraphs, 1)
        XCTAssertEqual(visitor.numberOfLinks, 0)
    }
}

import XCTest
import CommonMark

final class VisitorTests: XCTestCase {
    func testVisitorVisitingChildren() throws {
        typealias TestVisitor = StatisticsVisitor

        // Document nodes:

        // Document
        // ├─ Heading
        // │  └─ Link
        // │    └─ Text
        // ├─ Heading
        // │  └─ Text
        // └─ Paragraph
        //    ├─ Text
        //    ├─ SoftLineBreak
        //    ├─ Text
        //    ├─ SoftLineBreak
        //    └─ Text
        let document = try Document(Fixtures.udhr)

        // Visited nodes:

        // Document
        // ├─ Heading
        // │  └─ Link
        // │    └─ Text
        // ├─ Heading
        // │  └─ Text
        // └─ Paragraph
        //    ├─ Text
        //    ├─ SoftLineBreak
        //    ├─ Text
        //    ├─ SoftLineBreak
        //    └─ Text
        let visitor = TestVisitor()
        visitor.walk(document)

        let expedted = DocumentStatistics(
            documents: 1,
            nodes: 12,
            blocks: 3,
            leafBlocks: 3,
            headings: 2,
            paragraphs: 1,
            inlines: 8,
            texts: 5,
            links: 1,
            softLineBreaks: 2
        )

        XCTAssertEqual(visitor.statistics, expedted)
    }

    func testVisitorSkippingChildren() throws {
        final class TestVisitor: StatisticsVisitor {
            override func visit(link: Link) -> VisitorContinueKind {
                let _ = super.visit(link: link)

                return .skipChildren
            }

            override func visit(paragraph: Paragraph) -> VisitorContinueKind {
                let _ = super.visit(paragraph: paragraph)

                return .skipChildren
            }
        }

        // Document nodes:

        // Document
        // ├─ Heading
        // │  └─ Link
        // │    └─ Text
        // ├─ Heading
        // │  └─ Text
        // └─ Paragraph
        //    ├─ Text
        //    ├─ SoftLineBreak
        //    ├─ Text
        //    ├─ SoftLineBreak
        //    └─ Text
        let document = try Document(Fixtures.udhr)

        // Visited nodes:

        // Document
        // ├─ Heading
        // │  └─ Link (children skipped)
        // ├─ Heading
        // │  └─ Text
        // └─ Paragraph (children skipped)
        let visitor = TestVisitor()
        visitor.walk(document)

        let expedted = DocumentStatistics(
            documents: 1,
            nodes: 6,
            blocks: 3,
            leafBlocks: 3,
            headings: 2,
            paragraphs: 1,
            inlines: 2,
            texts: 1,
            links: 1,
            softLineBreaks: 0
        )

        XCTAssertEqual(visitor.statistics, expedted)
    }

    func testVisitorOverrides() throws {
        final class TestVisitor: StatisticsVisitor {
            override func visit(block: Block) -> VisitorContinueKind {
                let _ = super.visit(block: block)

                return .skipChildren
            }

            // Given that `Paragraph` is a subtype of `Block` it overrides:
            override func visit(paragraph: Paragraph) -> VisitorContinueKind {
                let _ = super.visit(paragraph: paragraph)

                return .visitChildren
            }
        }

        // Document nodes:

        // Document
        // ├─ Heading
        // │  └─ Link
        // │    └─ Text
        // ├─ Heading
        // │  └─ Text
        // └─ Paragraph
        //    ├─ Text
        //    ├─ SoftLineBreak
        //    ├─ Text
        //    ├─ SoftLineBreak
        //    └─ Text
        let document = try Document(Fixtures.udhr)

        // Visited nodes:

        // Document
        // ├─ Heading (children skipped)
        // ├─ Heading (children skipped)
        // └─ Paragraph
        //    ├─ Text
        //    ├─ SoftLineBreak
        //    ├─ Text
        //    ├─ SoftLineBreak
        //    └─ Text
        let visitor = TestVisitor()
        visitor.walk(document)

        let expected = DocumentStatistics(
            documents: 1,
            nodes: 9,
            blocks: 3,
            leafBlocks: 3,
            headings: 2,
            paragraphs: 1,
            inlines: 5,
            texts: 3,
            links: 0,
            softLineBreaks: 2
        )

        XCTAssertEqual(visitor.statistics, expected)
    }
}

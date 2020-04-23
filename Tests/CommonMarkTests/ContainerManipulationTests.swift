import XCTest
import CommonMark

final class ContainerManipulationTests: XCTestCase {
    func testContainerOfBlocksManipulation() throws {
        let document = try Document(Fixtures.uhdr)

        XCTAssertEqual(document.children.count, 3)
        let heading = document.children[0] as! Heading
        XCTAssertEqual(heading.level, 1)
        let subheading = document.children[1] as! Heading
        XCTAssertEqual(subheading.level, 2)
        let paragraph = document.children[2] as! Paragraph
        XCTAssert(paragraph.description.starts(with: "All human beings"))

        let newParagraph = Paragraph(text:
           #"""
           Everyone is entitled to all the rights and freedoms set forth in this Declaration, 
           without distinction of any kind, such as race, colour, sex, language, religion, 
           political or other opinion, national or social origin, property, birth or other status.
           """#)
        let wasNewParagraphInserted = document.insert(child: newParagraph, after: paragraph)

        XCTAssertTrue(wasNewParagraphInserted)
        XCTAssertEqual(document.children.count, 4)
        XCTAssertEqual(newParagraph, document.children[3])

        let newSubheading = Heading(level: 2, text: "Article 2.")
        let wasSubheadingInserted = document.insert(child: newSubheading, before: newParagraph)
        XCTAssertTrue(wasSubheadingInserted)
        XCTAssertEqual(document.children.count, 5)
        XCTAssertEqual(newSubheading, document.children[3])
    }
    
    func testContainerOfInlineElementsManipulation() throws {
        let document = try Document(Fixtures.uhdr)

        let paragraph = document.children[2] as! Paragraph
        XCTAssertEqual(paragraph.children.count, 5)

        let text = Text(literal: "Article 1:")
        let wasTextInserted = paragraph.insert(child: text, before: paragraph.children[0])
        XCTAssertTrue(wasTextInserted)
        XCTAssertEqual(paragraph.children[0], text)

        let lineBrake = SoftLineBreak()
        let wasLineBreakInserted = paragraph.insert(child: lineBrake, after: text)
        XCTAssertTrue(wasLineBreakInserted)
        XCTAssertEqual(paragraph.children[1], lineBrake)
    }
}

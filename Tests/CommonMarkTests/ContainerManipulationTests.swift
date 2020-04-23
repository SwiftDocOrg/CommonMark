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
    
    func testListManipulation() throws {
        let document = try Document(
            #"""
            * First
            * Second
            * Forth
            """#)
        
        let list = document.children[0] as! List
        XCTAssertEqual(list.children.count, 3)

        let third = List.Item(children: [Text(literal: "Third")])
        let wasThirdInserted = list.insert(child: third, before: list.children[2])
        XCTAssertTrue(wasThirdInserted)
        XCTAssertEqual(list.children[2], third)

        let fifth = List.Item(children: [Text(literal: "Fifth")])
        let wasFithInserted = list.insert(child: fifth, after: list.children[3])
        XCTAssertTrue(wasFithInserted)
        XCTAssertEqual(list.children[4], fifth)
    }

    func testListItemManipulation() throws {

        let listItem = List.Item(children: [Paragraph(text: "First")])

        let secondChild = Paragraph(text: "Second")
        let wasSecondChildInserted = listItem.insert(child: secondChild, after: listItem.children[0])
        XCTAssertTrue(wasSecondChildInserted)
        XCTAssertEqual(listItem.children[1], secondChild)

        let thirdChild = Paragraph(text: "Third")
        let wasThirdChildInserted = listItem.insert(child: thirdChild, before: listItem.children[0])
        XCTAssertTrue(wasThirdChildInserted)
        XCTAssertEqual(listItem.children[0], thirdChild)
    }
}

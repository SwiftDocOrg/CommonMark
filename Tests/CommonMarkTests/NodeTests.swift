import XCTest
import CommonMark

final class NodeTests: XCTestCase {

    // MARK: - Equality

    func testNodesEquality() {
        let firstNode = Paragraph(text: #"""
        All human beings are born free and equal in dignity and rights.
        They are endowed with reason and conscience
        and should act towards one another in a spirit of brotherhood.
        """#, replacingNewLinesWithBreaks: true)
        let secondNode = Paragraph(text: #"""
        All human beings are born free and equal in dignity and rights.
        They are endowed with reason and conscience
        and should act towards one another in a spirit of brotherhood.
        """#, replacingNewLinesWithBreaks: true)

        XCTAssertNotEqual(firstNode, secondNode)
        XCTAssertEqual(firstNode, firstNode)
        XCTAssertEqual(secondNode, secondNode)
    }

    // MARK: - Hashable

    func testNodesHashable() {
        let text = #"""
        All human beings are born free and equal in dignity and rights.
        They are endowed with reason and conscience
        and should act towards one another in a spirit of brotherhood.
        """#
        
        let firstNode = Paragraph(text: "\(text)", replacingNewLinesWithBreaks: true)
        let secondNode = Paragraph(text: "\(text)", replacingNewLinesWithBreaks: true)

        var map = [Node: String]()
        map[firstNode] = "first"
        map[secondNode] = "second"

        XCTAssertEqual(map[firstNode], "first")
        XCTAssertEqual(map[secondNode], "second")
    }
    
    func testHashValueConsistentAfterNodeIsModified() {
        let paragraph = Paragraph(text: #"""
        All human beings are born free and equal in dignity and rights.
        They are endowed with reason and conscience
        """#, replacingNewLinesWithBreaks: true)
        var nodes = Set<Node>()
        nodes.insert(paragraph)

        paragraph.append(child: Text(literal: "and should act towards one another in a spirit of brotherhood."))

        XCTAssertTrue(nodes.contains(paragraph))
        XCTAssertEqual(paragraph.description,
        #"""
        All human beings are born free and equal in dignity and rights.
        They are endowed with reason and conscience
        and should act towards one another in a spirit of brotherhood.

        """#)
    }
}

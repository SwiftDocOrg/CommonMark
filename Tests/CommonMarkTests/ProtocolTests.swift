import XCTest
import CommonMark

/// Make sure element types do not conform to more protocols than they should.
///
/// - An inline element should not also be a block element and vice versa.
/// - A leaf block element should not also be a container block element and vice versa.
///
/// Breaking these invariants would be a breaking change for the `Visitor`'s assumptions about element sub-typing.
final class ProtocolTests: XCTestCase {
    func XCTAssertValidInline<T>(_ type: T.Type, file: StaticString = #file, line: UInt = #line) {
        XCTAssertTrue(T.self is Inline.Type, "Expected `Inline`", file: file, line: line)
        XCTAssertFalse(T.self is Block.Type, "Did not expect `Block`", file: file, line: line)
    }

    func XCTAssertValidLeafBlock<T>(_ type: T.Type, file: StaticString = #file, line: UInt = #line) {
        XCTAssertTrue(T.self is LeafBlock.Type, "Expected `LeafBlock`", file: file, line: line)
        XCTAssertFalse(T.self is ContainerBlock.Type, "Did not expect `ContainerBlock`", file: file, line: line)
        XCTAssertFalse(T.self is Inline.Type, "Did not expect `Inline`", file: file, line: line)
    }

    func XCTAssertValidContainerBlock<T>(_ type: T.Type, file: StaticString = #file, line: UInt = #line) {
        XCTAssertTrue(T.self is ContainerBlock.Type, "Expected `ContainerBlock`", file: file, line: line)
        XCTAssertFalse(T.self is LeafBlock.Type, "Did not expect `LeafBlock`", file: file, line: line)
        XCTAssertFalse(T.self is Inline.Type, "Did not expect `Inline`", file: file, line: line)
    }

    // MARK: - Node

    func testNode(){
        typealias ConcreteType = Node

        XCTAssertFalse(ConcreteType.self is Inline.Type)
        XCTAssertFalse(ConcreteType.self is Block.Type)
        XCTAssertFalse(ConcreteType.self is LeafBlock.Type)
        XCTAssertFalse(ConcreteType.self is ContainerBlock.Type)
    }

    // MARK: - Inline

    func testInline(){
        XCTAssertValidInline(HardLineBreak.self)
        XCTAssertValidInline(SoftLineBreak.self)
        XCTAssertValidInline(RawHTML.self)
        XCTAssertValidInline(Code.self)
        XCTAssertValidInline(Image.self)
        XCTAssertValidInline(Link.self)
        XCTAssertValidInline(Emphasis.self)
        XCTAssertValidInline(Text.self)
        XCTAssertValidInline(Strong.self)
    }

    // MARK: - Leaf Block

    func testLeafBlock(){
        XCTAssertValidLeafBlock(ThematicBreak.self)
        XCTAssertValidLeafBlock(CodeBlock.self)
        XCTAssertValidLeafBlock(HTMLBlock.self)
        XCTAssertValidLeafBlock(Paragraph.self)
        XCTAssertValidLeafBlock(Heading.self)
    }

    // MARK: - Container Block

    func testContainerBlock(){
        XCTAssertValidContainerBlock(List.Item.self)
        XCTAssertValidContainerBlock(List.self)
        XCTAssertValidContainerBlock(BlockQuote.self)
    }
}

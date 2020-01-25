import CommonMark

public protocol BlockConvertible {
    var blockValue: [Block & Node] { get }
}

// MARK: Default Implementations

extension Block where Self: Node {
    public var blockValue: [Block & Node] {
        return [self]
    }
}

// MARK: Conformances

extension BlockQuote: BlockConvertible {}
extension List: BlockConvertible {}
extension List.Item: BlockConvertible {}
extension Heading: BlockConvertible {}
extension Paragraph: BlockConvertible {}
extension HTMLBlock: BlockConvertible {}
extension CodeBlock: BlockConvertible {}
extension ThematicBreak: BlockConvertible {}

extension String: BlockConvertible {
    public var blockValue: [Block & Node] {
        [Paragraph(text: self)]
    }
}

@_exported import CommonMark

@_functionBuilder
public struct CommonMarkBuilder {
    public static func buildBlock(_ children: InlineConvertible...) -> InlineConvertible {
        Paragraph(children: children.flatMap { $0.inlineValue })
    }

    public static func buildBlock(_ children: BlockConvertible...) -> BlockConvertible {
        Fragment(children: children.flatMap { $0.blockValue })
    }

    public static func buildBlock(_ children: ListItemConvertible...) -> ListItemConvertible {
        Fragment(children: children.flatMap { $0.listItemValue })
    }
}

// MARK: - InlineConvertible

public protocol InlineConvertible {
    var inlineValue: [Inline & Node] { get }
}

// MARK: Conformances

extension Text: InlineConvertible {}
extension Strong: InlineConvertible {}
extension Emphasis: InlineConvertible {}
extension Link: InlineConvertible {}
extension Image: InlineConvertible {}
extension Code: InlineConvertible {}
extension HTML: InlineConvertible {}
extension SoftLineBreak: InlineConvertible {}
extension HardLineBreak: InlineConvertible {}

extension Paragraph: InlineConvertible {
    public var inlineValue: [Inline & Node] {
        return children
    }
}

extension String: InlineConvertible {
    public var inlineValue: [Inline & Node] {
        return [Text(literal: self)]
    }
}

// MARK: Default Implementations

extension Inline where Self: Node {
    public var inlineValue: [Inline & Node] {
        return [self]
    }
}


// MARK: - BlockConvertible

public protocol BlockConvertible {
    var blockValue: [Block & Node] { get }
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

// MARK: Default Implementations

extension Block where Self: Node {
    public var blockValue: [Block & Node] {
        return [self]
    }
}

// MARK: - ListItemConvertible

public protocol ListItemConvertible {
    var listItemValue: [List.Item] { get }
}

// MARK: Conformances

extension List.Item: ListItemConvertible {
    public var listItemValue: [List.Item] {
        return [self]
    }
}

extension Fragment: ListItemConvertible {
    public var listItemValue: [List.Item] {
        return children as? [List.Item] ?? [List.Item(children: children.compactMap { $0 as? Block & Node })]
    }
}
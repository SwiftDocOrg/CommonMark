@_exported import CommonMark

@_functionBuilder
public struct CommonMarkBuilder {

    // MARK: buildBlock

    public static func buildBlock(_ children: InlineConvertible...) -> InlineConvertible {
        return Paragraph(children: children.flatMap { $0.inlineValue })
    }

    public static func buildBlock(_ children: BlockConvertible...) -> BlockConvertible {
        return Fragment(children: children.flatMap { $0.blockValue })
    }

    public static func buildBlock(_ children: ListItemConvertible...) -> ListItemConvertible {
        return Fragment(children: children.flatMap { $0.listItemValue })
    }

    // MARK: buildIf

    public static func buildIf(_ child: InlineConvertible?) -> InlineConvertible {
        return child ?? Text()
    }

    public static func buildIf(_ child: BlockConvertible?) -> BlockConvertible {
        return child ?? Fragment { "" }
    }

    public static func buildIf(_ child: ListItemConvertible?) -> ListItemConvertible {
        return child ?? Fragment { "" }
    }

    // MARK: buildEither

    public static func buildEither(first: InlineConvertible) -> InlineConvertible {
        return first
    }

    public static func buildEither(second: InlineConvertible) -> InlineConvertible {
        return second
    }

    public static func buildEither(first: BlockConvertible) -> BlockConvertible {
        return first
    }

    public static func buildEither(second: BlockConvertible) -> BlockConvertible {
        return second
    }

    public static func buildEither(first: ListItemConvertible) -> ListItemConvertible {
        return first
    }

    public static func buildEither(second: ListItemConvertible) -> ListItemConvertible {
        return second
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

// MARK: Default Implementations

extension Inline where Self: Node {
    public var listItemValue: [List.Item] {
        return [List.Item(children: [self])]
    }
}

// MARK: Conformances

extension Text: ListItemConvertible {}
extension Strong: ListItemConvertible {}
extension Emphasis: ListItemConvertible {}
extension Link: ListItemConvertible {}
extension Image: ListItemConvertible {}
extension Code: ListItemConvertible {}
extension HTML: ListItemConvertible {}
extension SoftLineBreak: ListItemConvertible {}
extension HardLineBreak: ListItemConvertible {}

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

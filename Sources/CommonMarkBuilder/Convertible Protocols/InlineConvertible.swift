import CommonMark

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
extension RawHTML: InlineConvertible {}
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

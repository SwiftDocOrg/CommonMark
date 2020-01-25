import CommonMark

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
        return children as? [List.Item] ?? [List.Item(children: children)]
    }
}

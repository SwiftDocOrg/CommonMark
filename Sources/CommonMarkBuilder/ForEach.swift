public struct ForEach {
    var children: [BlockConvertible] = []

    public init<Values>(in values: Values, @CommonMarkBuilder _ builder: (Values.Element) -> BlockConvertible) where Values: Sequence {
        self.children = values.compactMap { builder($0) }
    }
}

// MARK: - BlockConvertible

extension ForEach: BlockConvertible {
    public var blockValue: [Block & Node] {
        children.flatMap { $0.blockValue }
    }
}

// MARK: - ListItemConvertible

extension ForEach: ListItemConvertible {
    public var listItemValue: [List.Item] {
        return children as? [List.Item] ?? [List.Item(children: children.compactMap { $0 as? Block & Node })]
    }
}

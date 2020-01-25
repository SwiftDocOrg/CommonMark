import CommonMark

public struct Fragment {
    public var children: [Block & Node] = []

    init(children: [Block & Node]) {
        self.children = children
    }

    public init(@StringBuilder _ builder: () -> String) {
        self.init(children: (try? Document(builder()).children) ?? [])
    }

    public init(@CommonMarkBuilder _ builder: () -> BlockConvertible) {
        self.init(children: builder().blockValue)
    }
}

// MARK: - BlockConvertible

extension Fragment: BlockConvertible {
    public var blockValue: [Block & Node] {
        return children
    }
}

// MARK: - ListItemConvertible

extension Fragment: ListItemConvertible {
    public var listItemValue: [List.Item] {
        return children as? [List.Item] ?? [List.Item(children: children)]
    }
}

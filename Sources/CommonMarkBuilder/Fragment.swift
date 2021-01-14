import CommonMark

public struct Fragment {
    public var children: [Block & Node] = []

    init(children: [Block & Node]) {
        self.children = children
    }

    public init(@StringBuilder _ builder: () -> String) {
        let document = try? Document(builder())
        // Unlink the children from the document node to prevent dangling pointers to the parent.
        let children = document?.removeChildren() ?? []
        self.init(children: children)
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

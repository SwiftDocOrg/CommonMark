import CommonMark

public struct Fragment {
    public var children: [Block & Node] = []

    init(children: [Block & Node]) {
        self.children = children
    }

    public init(@StringBuilder _ builder: () -> String) {
        let document = try? Document(builder())
        // We need to unlink the children from `document`
        // so that they can outlive it, or we end up with dangling pointers.
        // The easiest way to accomplish this is to use `drain()`,
        // which removes the children from their parent before returning them:
        let children = document?.drain() ?? []
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

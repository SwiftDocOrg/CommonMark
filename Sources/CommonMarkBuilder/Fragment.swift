import CommonMark

public struct Fragment: Block {
    var children: [Block] = []

    init(children: [Block]) {
        self.children = children
    }

    public init(@StringBuilder _ builder: () -> String) {
        self.init(children: (try? Document(builder()).children) ?? [])
    }
}

// MARK: - BlockConvertible

extension Fragment: BlockConvertible {
    public var blockValue: [Block & Node] {
        children.compactMap{ $0 as? Block & Node}
    }
}

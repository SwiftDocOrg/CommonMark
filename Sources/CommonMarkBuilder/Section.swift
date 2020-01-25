import CommonMark

public struct Section {
    public var children: [Block & Node] = []

    init(children: [Block & Node]) {
        self.children = children
    }

    public init(levelAdjustment: Int = +1, @CommonMarkBuilder _ builder: () -> BlockConvertible) {
        self.init(children: builder().blockValue.map { child in
            guard let heading = child as? Heading else { return child }
            heading.level += levelAdjustment
            return heading
        })
    }
}

// MARK: - BlockConvertible

extension Section: BlockConvertible {
    public var blockValue: [Block & Node] {
        return children
    }
}

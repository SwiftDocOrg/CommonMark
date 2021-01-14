public struct Section {
    private var levelAdjustment: Int

    public var children: [Block & Node] = []

    init(levelAdjustment: Int = +1, children: [Block & Node]) {
        self.levelAdjustment = levelAdjustment
        self.children = children
    }

    public init(levelAdjustment: Int = +1, @ContainerOfBlocksBuilder _ builder: () -> [Block & Node]) {
        self.init(levelAdjustment: levelAdjustment, children: builder().map { child in
            guard let heading = child as? Heading else { return child }
            heading.level += levelAdjustment
            return heading
        })
    }
}

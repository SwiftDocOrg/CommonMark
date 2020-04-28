import CommonMark

public struct DocumentStatistics: Equatable {
    public var documents: Int = 0
    
    // Node:
    
    public var nodes: Int = 0
    
    // Blocks:
    
    public var blocks: Int = 0
    
    // Container Blocks:
    
    public var containerBlocks: Int = 0
    
    public var blockQuotes: Int = 0
    public var lists: Int = 0
    public var listItems: Int = 0
    
    // Leaf Blocks:
    
    public var leafBlocks: Int = 0
    
    public var headings: Int = 0
    public var paragraphs: Int = 0
    public var htmlBlocks: Int = 0
    public var codeBlocks: Int = 0
    public var thematicBreaks: Int = 0
    
    // Inline:
    
    public var inlines: Int = 0
    
    public var texts: Int = 0
    public var strongs: Int = 0
    public var emphasises: Int = 0
    public var links: Int = 0
    public var images: Int = 0
    public var codes: Int = 0
    public var rawHTMLs: Int = 0
    public var softLineBreaks: Int = 0
    public var hardLineBreaks: Int = 0
}

open class StatisticsVisitor: Visitor {
    public var statistics: DocumentStatistics = .init()
    
    public func visit(document: Document) -> VisitorContinueKind {
        self.statistics.documents += 1
        return .inherit
    }
    
    // MARK: - Node
    
    public func visit(node: Node) -> VisitorContinueKind {
        self.statistics.nodes += 1
        return .inherit
    }
    
    // MARK: - Blocks
    
    public func visit(block: Block) -> VisitorContinueKind {
        self.statistics.blocks += 1
        return .inherit
    }
    
    // MARK: - Container Blocks
    
    public func visit(containerBlock: ContainerBlock) -> VisitorContinueKind {
        self.statistics.containerBlocks += 1
        return .inherit
    }
    
    public func visit(blockQuote: BlockQuote) -> VisitorContinueKind {
        self.statistics.blockQuotes += 1
        return .inherit
    }
    public func visit(list: List) -> VisitorContinueKind {
        self.statistics.lists += 1
        return .inherit
    }
    public func visit(listItem: List.Item) -> VisitorContinueKind {
        self.statistics.listItems += 1
        return .inherit
    }
    
    // MARK: - Leaf Blocks
    
    /// A block that can only contain inline elements.
    public func visit(leafBlock: LeafBlock) -> VisitorContinueKind {
        self.statistics.leafBlocks += 1
        return .inherit
    }
    
    public func visit(heading: Heading) -> VisitorContinueKind {
        self.statistics.headings += 1
        return .inherit
    }
    public func visit(paragraph: Paragraph) -> VisitorContinueKind {
        self.statistics.paragraphs += 1
        return .inherit
    }
    public func visit(htmlBlock: HTMLBlock) -> VisitorContinueKind {
        self.statistics.htmlBlocks += 1
        return .inherit
    }
    public func visit(codeBlock: CodeBlock) -> VisitorContinueKind {
        self.statistics.codeBlocks += 1
        return .inherit
    }
    public func visit(thematicBreak: ThematicBreak) -> VisitorContinueKind {
        self.statistics.thematicBreaks += 1
        return .inherit
    }
    
    // MARK: - Inline
    
    public func visit(inline: Inline) -> VisitorContinueKind {
        self.statistics.inlines += 1
        return .inherit
    }
    
    public func visit(text: Text) -> VisitorContinueKind {
        self.statistics.texts += 1
        return .inherit
    }
    public func visit(strong: Strong) -> VisitorContinueKind {
        self.statistics.strongs += 1
        return .inherit
    }
    public func visit(emphasis: Emphasis) -> VisitorContinueKind {
        self.statistics.emphasises += 1
        return .inherit
    }
    public func visit(link: Link) -> VisitorContinueKind {
        self.statistics.links += 1
        return .inherit
    }
    public func visit(image: Image) -> VisitorContinueKind {
        self.statistics.images += 1
        return .inherit
    }
    public func visit(code: Code) -> VisitorContinueKind {
        self.statistics.codes += 1
        return .inherit
    }
    public func visit(rawHTML: RawHTML) -> VisitorContinueKind {
        self.statistics.rawHTMLs += 1
        return .inherit
    }
    public func visit(softLineBreak: SoftLineBreak) -> VisitorContinueKind {
        self.statistics.softLineBreaks += 1
        return .inherit
    }
    public func visit(hardLineBreak: HardLineBreak) -> VisitorContinueKind {
        self.statistics.hardLineBreaks += 1
        return .inherit
    }
}

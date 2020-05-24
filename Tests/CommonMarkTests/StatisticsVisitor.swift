import CommonMark

struct DocumentStatistics: Equatable {
    var documents: Int = 0
    
    // Node:
    
    var nodes: Int = 0
    
    // Blocks:
    
    var blocks: Int = 0
    
    // Container Blocks:
    
    var containerBlocks: Int = 0
    
    var blockQuotes: Int = 0
    var lists: Int = 0
    var listItems: Int = 0
    
    // Leaf Blocks:
    
    var leafBlocks: Int = 0
    
    var headings: Int = 0
    var paragraphs: Int = 0
    var htmlBlocks: Int = 0
    var codeBlocks: Int = 0
    var thematicBreaks: Int = 0
    
    // Inline:
    
    var inlines: Int = 0
    
    var texts: Int = 0
    var strongs: Int = 0
    var emphasises: Int = 0
    var links: Int = 0
    var images: Int = 0
    var codes: Int = 0
    var rawHTMLs: Int = 0
    var softLineBreaks: Int = 0
    var hardLineBreaks: Int = 0
}

class StatisticsVisitor: Visitor {
    var statistics: DocumentStatistics = .init()
    
    func visit(document: Document) -> VisitorContinueKind {
        self.statistics.documents += 1
        return .inherit
    }
    
    // MARK: - Node
    
    func visit(node: Node) -> VisitorContinueKind {
        self.statistics.nodes += 1
        return .inherit
    }
    
    // MARK: - Blocks
    
    func visit(block: Block) -> VisitorContinueKind {
        self.statistics.blocks += 1
        return .inherit
    }
    
    // MARK: - Container Blocks
    
    func visit(containerBlock: ContainerBlock) -> VisitorContinueKind {
        self.statistics.containerBlocks += 1
        return .inherit
    }
    
    func visit(blockQuote: BlockQuote) -> VisitorContinueKind {
        self.statistics.blockQuotes += 1
        return .inherit
    }
    func visit(list: List) -> VisitorContinueKind {
        self.statistics.lists += 1
        return .inherit
    }
    func visit(listItem: List.Item) -> VisitorContinueKind {
        self.statistics.listItems += 1
        return .inherit
    }
    
    // MARK: - Leaf Blocks
    
    /// A block that can only contain inline elements.
    func visit(leafBlock: LeafBlock) -> VisitorContinueKind {
        self.statistics.leafBlocks += 1
        return .inherit
    }
    
    func visit(heading: Heading) -> VisitorContinueKind {
        self.statistics.headings += 1
        return .inherit
    }
    func visit(paragraph: Paragraph) -> VisitorContinueKind {
        self.statistics.paragraphs += 1
        return .inherit
    }
    func visit(htmlBlock: HTMLBlock) -> VisitorContinueKind {
        self.statistics.htmlBlocks += 1
        return .inherit
    }
    func visit(codeBlock: CodeBlock) -> VisitorContinueKind {
        self.statistics.codeBlocks += 1
        return .inherit
    }
    func visit(thematicBreak: ThematicBreak) -> VisitorContinueKind {
        self.statistics.thematicBreaks += 1
        return .inherit
    }
    
    // MARK: - Inline
    
    func visit(inline: Inline) -> VisitorContinueKind {
        self.statistics.inlines += 1
        return .inherit
    }
    
    func visit(text: Text) -> VisitorContinueKind {
        self.statistics.texts += 1
        return .inherit
    }
    func visit(strong: Strong) -> VisitorContinueKind {
        self.statistics.strongs += 1
        return .inherit
    }
    func visit(emphasis: Emphasis) -> VisitorContinueKind {
        self.statistics.emphasises += 1
        return .inherit
    }
    func visit(link: Link) -> VisitorContinueKind {
        self.statistics.links += 1
        return .inherit
    }
    func visit(image: Image) -> VisitorContinueKind {
        self.statistics.images += 1
        return .inherit
    }
    func visit(code: Code) -> VisitorContinueKind {
        self.statistics.codes += 1
        return .inherit
    }
    func visit(rawHTML: RawHTML) -> VisitorContinueKind {
        self.statistics.rawHTMLs += 1
        return .inherit
    }
    func visit(softLineBreak: SoftLineBreak) -> VisitorContinueKind {
        self.statistics.softLineBreaks += 1
        return .inherit
    }
    func visit(hardLineBreak: HardLineBreak) -> VisitorContinueKind {
        self.statistics.hardLineBreaks += 1
        return .inherit
    }
}

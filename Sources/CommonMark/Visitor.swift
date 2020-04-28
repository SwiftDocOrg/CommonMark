public enum VisitorContinueKind {
    /// The visitor should visit the descendents of the current node.
    case visitChildren

    /// The visitor should avoid visiting the descendents of the current node.
    case skipChildren

    /// The default is `.visitChildren`
    static let `default`: Self = .visitChildren
}

public protocol Visitor {
    var defaultContinueKind: VisitorContinueKind { get }

    func walk<T: Visitable>(_ visitable: T)

    // MARK: - Document

    func visit(document: Document) -> VisitorContinueKind

    // MARK: - Container Blocks

    func visit(blockQuote: BlockQuote) -> VisitorContinueKind
    func visit(list: List) -> VisitorContinueKind
    func visit(listItem: List.Item) -> VisitorContinueKind

    // MARK: - Leaf Blocks

    func visit(heading: Heading) -> VisitorContinueKind
    func visit(paragraph: Paragraph) -> VisitorContinueKind
    func visit(htmlBlock: HTMLBlock) -> VisitorContinueKind
    func visit(codeBlock: CodeBlock) -> VisitorContinueKind
    func visit(thematicBreak: ThematicBreak) -> VisitorContinueKind

    // MARK: - Inline

    func visit(text: Text) -> VisitorContinueKind
    func visit(strong: Strong) -> VisitorContinueKind
    func visit(emphasis: Emphasis) -> VisitorContinueKind
    func visit(link: Link) -> VisitorContinueKind
    @discardableResult
    func visit(image: Image) -> VisitorContinueKind
    @discardableResult
    func visit(code: Code) -> VisitorContinueKind
    @discardableResult
    func visit(rawHTML: RawHTML) -> VisitorContinueKind
    @discardableResult
    func visit(softLineBreak: SoftLineBreak) -> VisitorContinueKind
    @discardableResult
    func visit(hardLineBreak: HardLineBreak) -> VisitorContinueKind
}

extension Visitor {
    public var defaultContinueKind: VisitorContinueKind {
        return.visitChildren
    }

    public func walk<T: Visitable>(_ visitable: T) {
        visitable.accept(visitor: self)
    }

    // MARK: - Document

    public func visit(document: Document) -> VisitorContinueKind {
        return self.defaultContinueKind
    }

    // MARK: - Container Blocks

    public func visit(blockQuote: BlockQuote) -> VisitorContinueKind {
        return self.defaultContinueKind
    }
    public func visit(list: List) -> VisitorContinueKind {
        return self.defaultContinueKind
    }
    public func visit(listItem: List.Item) -> VisitorContinueKind {
        return self.defaultContinueKind
    }

    // MARK: - Leaf Blocks

    public func visit(heading: Heading) -> VisitorContinueKind {
        return self.defaultContinueKind
    }
    public func visit(paragraph: Paragraph) -> VisitorContinueKind {
        return self.defaultContinueKind
    }
    public func visit(htmlBlock: HTMLBlock) -> VisitorContinueKind {
        return self.defaultContinueKind
    }
    public func visit(codeBlock: CodeBlock) -> VisitorContinueKind {
        return self.defaultContinueKind
    }
    public func visit(thematicBreak: ThematicBreak) -> VisitorContinueKind {
        return self.defaultContinueKind
    }

    // MARK: - Inline

    public func visit(text: Text) -> VisitorContinueKind {
        return self.defaultContinueKind
    }
    public func visit(strong: Strong) -> VisitorContinueKind {
        return self.defaultContinueKind
    }
    public func visit(emphasis: Emphasis) -> VisitorContinueKind {
        return self.defaultContinueKind
    }
    public func visit(link: Link) -> VisitorContinueKind {
        return self.defaultContinueKind
    }
    @discardableResult
    public func visit(image: Image) -> VisitorContinueKind {
        return self.defaultContinueKind
    }
    @discardableResult
    public func visit(code: Code) -> VisitorContinueKind {
        return self.defaultContinueKind
    }
    @discardableResult
    public func visit(rawHTML: RawHTML) -> VisitorContinueKind {
        return self.defaultContinueKind
    }
    @discardableResult
    public func visit(softLineBreak: SoftLineBreak) -> VisitorContinueKind {
        return self.defaultContinueKind
    }
    @discardableResult
    public func visit(hardLineBreak: HardLineBreak) -> VisitorContinueKind {
        return self.defaultContinueKind
    }
}

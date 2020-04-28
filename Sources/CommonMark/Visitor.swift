public enum VisitorContinueKind {
    /// The visitor should visit the descendents of the current node.
    case visitChildren

    /// The visitor should avoid visiting the descendents of the current node.
    case skipChildren

    case inherit

    /// The default is `.visitChildren`
    static let `default`: Self = .visitChildren

    mutating func override(with other: Self) {
        switch other {
        case .visitChildren, .skipChildren:
            self = other
        case .inherit:
            break
        }
    }
}

/// Visitor for walking a visitable structure.
///
/// The order of object-wise visitations is:
///
/// 1. `func visit(node:)`, iff the visited object conforms to `Node`.
/// 2. `func visit(block:)`, iff the visited object conforms to `Block`.
/// 3. `func visit(containerBlock:)`, iff the visited object conforms to `ContainerBlock`.
/// 4. `func visit(leafBlock:)`, iff the visited object conforms to `LeafBlock`.
/// 5. `func visit(inline:)`, iff the visited object conforms to `Inline`.
/// 6. `func visit(<concrete>:)`, where `<concrete>` corresponds to the
///   the visited object's concrete type.
///
/// With each visitation's returned `VisitorContinueKind` overriding the previous one.
///
public protocol Visitor {
    /// The fallback for when `.inherit`
    var defaultContinueKind: VisitorContinueKind { get }

    /// Walks a visitable structure.
    /// - Parameter visitable: The structure to walk.
    func walk<T: Visitable>(_ visitable: T)

    // MARK: - Document

    func visit(document: Document) -> VisitorContinueKind

    // MARK: - Node

    func visit(node: Node) -> VisitorContinueKind

    // MARK: - Blocks

    func visit(block: Block) -> VisitorContinueKind

    // MARK: - Container Blocks

    func visit(containerBlock: ContainerBlock) -> VisitorContinueKind

    func visit(blockQuote: BlockQuote) -> VisitorContinueKind
    func visit(list: List) -> VisitorContinueKind
    func visit(listItem: List.Item) -> VisitorContinueKind

    // MARK: - Leaf Blocks

    /// A block that can only contain inline elements.
    func visit(leafBlock: LeafBlock) -> VisitorContinueKind

    func visit(heading: Heading) -> VisitorContinueKind
    func visit(paragraph: Paragraph) -> VisitorContinueKind
    func visit(htmlBlock: HTMLBlock) -> VisitorContinueKind
    func visit(codeBlock: CodeBlock) -> VisitorContinueKind
    func visit(thematicBreak: ThematicBreak) -> VisitorContinueKind

    // MARK: - Inline

    func visit(inline: Inline) -> VisitorContinueKind

    func visit(text: Text) -> VisitorContinueKind
    func visit(strong: Strong) -> VisitorContinueKind
    func visit(emphasis: Emphasis) -> VisitorContinueKind
    func visit(link: Link) -> VisitorContinueKind
    func visit(image: Image) -> VisitorContinueKind
    func visit(code: Code) -> VisitorContinueKind
    func visit(rawHTML: RawHTML) -> VisitorContinueKind
    func visit(softLineBreak: SoftLineBreak) -> VisitorContinueKind
    func visit(hardLineBreak: HardLineBreak) -> VisitorContinueKind
}

extension Visitor {
    // Non-overridable default used as last-resort fallback.
    internal static var defaultContinueKind: VisitorContinueKind {
        return .visitChildren
    }

    public var defaultContinueKind: VisitorContinueKind {
        return Self.defaultContinueKind
    }

    public func walk<T: Visitable>(_ visitable: T) {
        visitable.accept(visitor: self)
    }

    // MARK: - Document

    public func visit(document: Document) -> VisitorContinueKind {
        return .inherit
    }

    // MARK: - Node

    public func visit(node: Node) -> VisitorContinueKind {
        return .inherit
    }

    // MARK: - Blocks

    public func visit(block: Block) -> VisitorContinueKind {
        return .inherit
    }

    // MARK: - Container Blocks

    public func visit(containerBlock: ContainerBlock) -> VisitorContinueKind {
        return .inherit
    }

    public func visit(blockQuote: BlockQuote) -> VisitorContinueKind {
        return .inherit
    }
    public func visit(list: List) -> VisitorContinueKind {
        return .inherit
    }
    public func visit(listItem: List.Item) -> VisitorContinueKind {
        return .inherit
    }

    // MARK: - Leaf Blocks

    /// A block that can only contain inline elements.
    public func visit(leafBlock: LeafBlock) -> VisitorContinueKind {
        return .inherit
    }

    public func visit(heading: Heading) -> VisitorContinueKind {
        return .inherit
    }
    public func visit(paragraph: Paragraph) -> VisitorContinueKind {
        return .inherit
    }
    public func visit(htmlBlock: HTMLBlock) -> VisitorContinueKind {
        return .inherit
    }
    public func visit(codeBlock: CodeBlock) -> VisitorContinueKind {
        return .inherit
    }
    public func visit(thematicBreak: ThematicBreak) -> VisitorContinueKind {
        return .inherit
    }

    // MARK: - Inline

    public func visit(inline: Inline) -> VisitorContinueKind {
        return .inherit
    }

    public func visit(text: Text) -> VisitorContinueKind {
        return .inherit
    }
    public func visit(strong: Strong) -> VisitorContinueKind {
        return .inherit
    }
    public func visit(emphasis: Emphasis) -> VisitorContinueKind {
        return .inherit
    }
    public func visit(link: Link) -> VisitorContinueKind {
        return .inherit
    }
    public func visit(image: Image) -> VisitorContinueKind {
        return .inherit
    }
    public func visit(code: Code) -> VisitorContinueKind {
        return .inherit
    }
    public func visit(rawHTML: RawHTML) -> VisitorContinueKind {
        return .inherit
    }
    public func visit(softLineBreak: SoftLineBreak) -> VisitorContinueKind {
        return .inherit
    }
    public func visit(hardLineBreak: HardLineBreak) -> VisitorContinueKind {
        return .inherit
    }

    public func didEndVisit() {
        // nothing by default
    }
}

extension Visitor {
    internal func visit<T: Visitable>(
        _ visitable: T,
        by visitLeafTypeOf: @autoclosure () -> VisitorContinueKind
    ) -> VisitorContinueKind {
        let userDefaultContinueKind = self.defaultContinueKind

        let inheritedContinueKind = self.visitSuperTypesOf(visitable: visitable)
        let leafTypeContinueKind = visitLeafTypeOf()

        // Abort on debug:
        assert(
            userDefaultContinueKind != .inherit,
            "The default must not be `.inherit`"
        )

        // Don't rely on the user playing by the rules:
        var continueKind = Self.defaultContinueKind

        continueKind.override(with: userDefaultContinueKind)
        continueKind.override(with: inheritedContinueKind)
        continueKind.override(with: leafTypeContinueKind)

        return continueKind
    }

    internal func visitSuperTypesOf<T: Visitable>(visitable: T) -> VisitorContinueKind {
        var continueKind: VisitorContinueKind = .inherit

        if let node = visitable as? Node {
            continueKind.override(with: self.visit(node: node))
        }
        if let block = visitable as? Block {
            continueKind.override(with: self.visit(block: block))
        }
        if let containerBlock = visitable as? ContainerBlock {
            continueKind.override(with: self.visit(containerBlock: containerBlock))
        }
        if let leafBlock = visitable as? LeafBlock {
            continueKind.override(with: self.visit(leafBlock: leafBlock))
        }
        if let inline = visitable as? Inline {
            continueKind.override(with: self.visit(inline: inline))
        }

        return continueKind
    }
}

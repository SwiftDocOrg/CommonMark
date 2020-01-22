import cmark

struct Children: Sequence {
    var cmark_node: OpaquePointer

    init(of node: Node) {
        cmark_node = node.cmark_node
    }

    init(of document: Document) {
        cmark_node = document.cmark_node
    }

    func makeIterator() -> AnyIterator<Node> {
        var iterator = CMarkNodeChildIterator(cmark_node)
        return AnyIterator {
            guard let child = iterator.next() else { return nil }
            return Node.create(for: child)
        }
    }
}

struct CMarkNodeChildIterator: IteratorProtocol {
    var current: OpaquePointer!

    init(_ node: OpaquePointer!) {
        current = cmark_node_first_child(node)
    }

    mutating func next() -> OpaquePointer? {
        guard let next = current else { return nil }
        defer { current = cmark_node_next(current) }
        return next
    }
}

// MARK: -

fileprivate func add<Child: Node>(_ child: Child, with operation: () -> Int32) -> Bool {
    let status = operation()
    switch status {
    case 1:
        child.managed = false
        return true
    case 0:
        return false
    default:
        assertionFailure("unexpected status code: \(status)")
        return false
    }

}

// MARK: -

public protocol ContainerOfBlocks: Node {}

extension Document: ContainerOfBlocks {}
extension BlockQuote: ContainerOfBlocks {}
extension ListItem: ContainerOfBlocks {}

extension ContainerOfBlocks {
    /// The block's children.
    public var children: [Block] {
        get {
            return Children(of: self).compactMap { $0 as? Block }
        }

        set {
            for child in children {
                remove(child: child)
            }

            for child in newValue {
                append(child: child)
            }
        }
    }

    /**
     Adds a block to the beginning of the block's children.

     - Parameters:
        - child: The block to add.
     - Returns: `true` if successful, otherwise `false`.
     */
    @discardableResult
    public func prepend(child: Block) -> Bool {
        return add(child) { cmark_node_prepend_child(cmark_node, child.cmark_node) }
    }

    /**
     Adds a block to the end of the block's children.

     - Parameters:
        - child: The block to add.
     - Returns: `true` if successful, otherwise `false`.
    */
    @discardableResult
    public func append(child: Block) -> Bool {
        return add(child) { cmark_node_append_child(cmark_node, child.cmark_node) }
    }

    /**
     Inserts a block to the block's children before a specified sibling.

     - Parameters:
        - child: The block to add.
        - sibling: The child before which the block is added
     - Returns: `true` if successful, otherwise `false`.
    */
    @discardableResult
    public func insert(child: Block, before sibling: Block) -> Bool {
        return add(child) { cmark_node_insert_before(child.cmark_node, sibling.cmark_node) }
    }

    /**
     Inserts a block to the block's children after a specified sibling.

     - Parameters:
        - child: The block to add.
        - sibling: The child after which the block is added
     - Returns: `true` if successful, otherwise `false`.
    */
    @discardableResult
    public func insert(child: Block, after sibling: Block) -> Bool {
        return add(child) { cmark_node_insert_after(child.cmark_node, sibling.cmark_node) }
    }

    /**
     Removes a block from the block's children.

     - Parameters:
        - child: The block to remove.
     - Returns: `true` if successful, otherwise `false`.
     */
    @discardableResult
    public func remove(child: Block) -> Bool {
        guard child.parent == self else { return false }
        cmark_node_unlink(child.cmark_node)
        child.managed = true
        return true
    }
}

// MARK: -

public protocol ContainerOfInlineElements: Node {}

extension Heading: ContainerOfInlineElements {}
extension Paragraph: ContainerOfInlineElements {}
extension HTMLBlock: ContainerOfInlineElements {}
extension CodeBlock: ContainerOfInlineElements {}
extension ThematicBreak: ContainerOfInlineElements {}
extension Strong: ContainerOfInlineElements {}
extension Emphasis: ContainerOfInlineElements {}
extension Link: ContainerOfInlineElements {}

extension ContainerOfInlineElements {
    /// The block's children.
    public var children: [Inline] {
        get {
            return Children(of: self).compactMap { $0 as? Inline }
        }

        set {
            for child in children {
                remove(child: child)
            }

            for child in newValue {
                append(child: child)
            }
        }
    }

    /**
     Adds an inline element to the beginning of the block's children.

     - Parameters:
        - child: The inline element to add.
     - Returns: `true` if successful, otherwise `false`.
     */
    @discardableResult
    public func prepend(child: Inline) -> Bool {
        return add(child) { cmark_node_prepend_child(cmark_node, child.cmark_node) }
    }

    /**
     Adds an inline element to the end of the block's children.

     - Parameters:
        - child: The inline element to add.
     - Returns: `true` if successful, otherwise `false`.
    */
    @discardableResult
    public func append(child: Inline) -> Bool {
        return add(child) { cmark_node_append_child(cmark_node, child.cmark_node) }
    }

    /**
     Inserts an inline element to the block's children before a specified sibling.

     - Parameters:
        - child: The inline element to add.
        - sibling: The child before which the inline element is added
     - Returns: `true` if successful, otherwise `false`.
    */
    @discardableResult
    public func insert(child: Inline, before sibling: Inline) -> Bool {
        return add(child) { cmark_node_insert_before(child.cmark_node, sibling.cmark_node) }
    }

    /**
     Inserts an inline element to the block's children after a specified sibling.

     - Parameters:
        - child: The inline element to add.
        - sibling: The child after which the inline element is added
     - Returns: `true` if successful, otherwise `false`.
    */
    @discardableResult
    public func insert(child: Inline, after sibling: Inline) -> Bool {
        return add(child) { cmark_node_insert_after(child.cmark_node, sibling.cmark_node) }
    }

    /**
     Removes an inline element from the block's children.

     - Parameters:
        - child: The inline element to remove.
     - Returns: `true` if successful, otherwise `false`.
     */
    @discardableResult
    public func remove(child: Inline) -> Bool {
        guard child.parent == self else { return false }
        cmark_node_unlink(child.cmark_node)
        child.managed = true
        return true
    }
}

// MARK: -

extension List {
    /// The block's children.
    public var children: [ListItem] {
        get {
            return Children(of: self).compactMap { $0 as? ListItem }
        }

        set {
            for child in children {
                remove(child: child)
            }

            for child in newValue {
                append(child: child)
            }
        }
    }

    /**
     Adds a block to the beginning of the block's children.

     - Parameters:
        - child: The block to add.
     - Returns: `true` if successful, otherwise `false`.
     */
    @discardableResult
    public func prepend(child: ListItem) -> Bool {
        return add(child) { cmark_node_prepend_child(cmark_node, child.cmark_node) }
    }

    /**
     Adds a block to the end of the block's children.

     - Parameters:
        - child: The block to add.
     - Returns: `true` if successful, otherwise `false`.
    */
    @discardableResult
    public func append(child: ListItem) -> Bool {
        return add(child) { cmark_node_append_child(cmark_node, child.cmark_node) }
    }

    /**
     Inserts a block to the block's children before a specified sibling.

     - Parameters:
        - child: The block to add.
        - sibling: The child before which the block is added
     - Returns: `true` if successful, otherwise `false`.
    */
    @discardableResult
    public func insert(child: ListItem, before sibling: ListItem) -> Bool {
        return add(child) { cmark_node_insert_before(child.cmark_node, sibling.cmark_node) }
    }

    /**
     Inserts a block to the block's children after a specified sibling.

     - Parameters:
        - child: The block to add.
        - sibling: The child after which the block is added
     - Returns: `true` if successful, otherwise `false`.
    */
    @discardableResult
    public func insert(child: ListItem, after sibling: ListItem) -> Bool {
        return add(child) { cmark_node_insert_after(child.cmark_node, sibling.cmark_node) }
    }

    /**
     Removes a block from the block's children.

     - Parameters:
        - child: The block to remove.
     - Returns: `true` if successful, otherwise `false`.
     */
    @discardableResult
    public func remove(child: ListItem) -> Bool {
         guard child.parent == self else { return false }
         cmark_node_unlink(child.cmark_node)
         child.managed = true
         return true
    }
}

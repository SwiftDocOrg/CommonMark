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

public protocol ContainerOfBlocks: Node {
    var children: [Block & Node] { get }
}

extension Document: ContainerOfBlocks {}
extension BlockQuote: ContainerOfBlocks {}

extension ContainerOfBlocks {
    /**
     The block elements contained by the node.

     - Important: The returned child nodes are valid only during the lifetime of their parent.
                  Use the `removeChildren()` method to detach and access children
                  beyond the lifetime of their parent.
     */
    public var children: [Block & Node] {
        get {
            return Children(of: self).compactMap { $0 as? Block & Node }
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
     Adds a block to the beginning of the node's children.

     - Parameters:
        - child: The block to add.
     - Returns: `true` if successful, otherwise `false`.
     */
    @discardableResult
    public func prepend(child: Block & Node) -> Bool {
        guard cmark_node_prepend_child(cmark_node, child.cmark_node) == 1 else { return false }

        child.managed = false

        return true
    }

    /**
     Adds a block to the end of the node's children.

     - Parameters:
        - child: The block to add.
     - Returns: `true` if successful, otherwise `false`.
    */
    @discardableResult
    public func append(child: Block & Node) -> Bool {
        guard cmark_node_append_child(cmark_node, child.cmark_node) == 1 else { return false }

        child.managed = false

        return true
    }

    /**
     Inserts a block to the node's children before a specified sibling.

     - Parameters:
        - child: The block to add.
        - sibling: The child before which the block is added
     - Returns: `true` if successful, otherwise `false`.
    */
    @discardableResult
    public func insert(child: Block & Node, before sibling: Block & Node) -> Bool {
        guard cmark_node_insert_before(sibling.cmark_node, child.cmark_node) == 1 else { return false }

        child.managed = false

        return true
    }

    /**
     Inserts a block to the node's children after a specified sibling.

     - Parameters:
        - child: The block to add.
        - sibling: The child after which the block is added
     - Returns: `true` if successful, otherwise `false`.
    */
    @discardableResult
    public func insert(child: Block & Node, after sibling: Block & Node) -> Bool {
        guard cmark_node_insert_after(sibling.cmark_node, child.cmark_node) == 1 else { return false }

        child.managed = false

        return true
    }

    /**
     Replaces a block with the specified node.

     - Parameters:
        - child: The block to replace.
        - replacement: The block to replace the existing block.
     - Returns: `true` if successful, otherwise `false`.
    */
    @discardableResult
    public func replace(child: Block & Node, with replacement: Block & Node) -> Bool {
        guard cmark_node_replace(child.cmark_node, replacement.cmark_node) == 1 else { return false }

        replacement.managed = false
        child.managed = true

        return true
    }

    /**
     Removes a block from the node's children.

     - Parameters:
        - child: The block to remove.
     - Returns: `true` if successful, otherwise `false`.
     */
    @discardableResult
    public func remove(child: Block & Node) -> Bool {
        guard child.parent == self else { return false }

        child.unlink()

        return true
    }

    /**
     Removes and returns the node's children.

     - Returns: An array of block structure elements.
     */
    @discardableResult
    public func removeChildren() -> [Block & Node] {
        var children: [Block & Node] = []

        for child in self.children {
            guard remove(child: child) else { continue }
            children.append(child)
        }

        return children
    }
}

// MARK: -

public protocol ContainerOfInlineElements: Node {
    var children: [Inline & Node] { get }
}

extension Heading: ContainerOfInlineElements {}
extension Paragraph: ContainerOfInlineElements {}
extension HTMLBlock: ContainerOfInlineElements {}
extension CodeBlock: ContainerOfInlineElements {}
extension ThematicBreak: ContainerOfInlineElements {}
extension Strong: ContainerOfInlineElements {}
extension Emphasis: ContainerOfInlineElements {}
extension Link: ContainerOfInlineElements {}

extension ContainerOfInlineElements {
    /**
     The inline elements contained by the node.

     - Important: The returned child nodes are valid only during the lifetime of their parent.
                  Use the `removeChildren()` method to detach and access children
                  beyond the lifetime of their parent.
     */
    public var children: [Inline & Node] {
        get {
            return Children(of: self).compactMap { $0 as? Inline & Node }
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
     Adds an inline element to the beginning of the node's children.

     - Parameters:
        - child: The inline element to add.
     - Returns: `true` if successful, otherwise `false`.
     */
    @discardableResult
    public func prepend(child: Inline & Node) -> Bool {
        guard cmark_node_prepend_child(cmark_node, child.cmark_node) == 1 else { return false }

        child.managed = false

        return true
    }

    /**
     Adds an inline element to the end of the node's children.

     - Parameters:
        - child: The inline element to add.
     - Returns: `true` if successful, otherwise `false`.
    */
    @discardableResult
    public func append(child: Inline & Node) -> Bool {
        guard cmark_node_append_child(cmark_node, child.cmark_node) == 1 else { return false }

        child.managed = false

        return true
    }

    /**
     Inserts an inline element to the node's children before a specified sibling.

     - Parameters:
        - child: The inline element to add.
        - sibling: The child before which the inline element is added
     - Returns: `true` if successful, otherwise `false`.
    */
    @discardableResult
    public func insert(child: Inline & Node, before sibling: Inline & Node) -> Bool {
        guard cmark_node_insert_before(sibling.cmark_node, child.cmark_node) == 1 else { return false }

        child.managed = false

        return true
    }

    /**
     Inserts an inline element to the node's children after a specified sibling.

     - Parameters:
        - child: The inline element to add.
        - sibling: The child after which the inline element is added
     - Returns: `true` if successful, otherwise `false`.
    */
    @discardableResult
    public func insert(child: Inline & Node, after sibling: Inline & Node) -> Bool {
        guard cmark_node_insert_after(sibling.cmark_node, child.cmark_node) == 1 else { return false }

        child.managed = false

        return true
    }

    /**
     Replaces an inline element with the specified node.

     - Parameters:
        - child: The inline element to replace.
        - replacement: The inline element to replace the existing inline element.
     - Returns: `true` if successful, otherwise `false`.
    */
    @discardableResult
    public func replace(child: Inline & Node, with replacement: Inline & Node) -> Bool {
        guard cmark_node_replace(child.cmark_node, replacement.cmark_node) == 1 else { return false }

        replacement.managed = false
        child.managed = true

        return true
    }

    /**
     Removes an inline element from the node's children.

     - Parameters:
        - child: The inline element to remove.
     - Returns: `true` if successful, otherwise `false`.
     */
    @discardableResult
    public func remove(child: Inline & Node) -> Bool {
        guard child.parent == self else { return false }

        child.unlink()

        return true
    }

    /**
     Removes and returns the node's children.

     - Returns: An array of inline content elements.
     */
    @discardableResult
    public func removeChildren() -> [Inline & Node] {
        var children: [Inline & Node] = []

        for child in self.children {
            guard remove(child: child) else { continue }
            children.append(child)
        }

        return children
    }
}

// MARK: -

extension List {
    /**
     The list's items.

     - Important: The returned child nodes are valid only during the lifetime of their parent.
                  Use the `removeChildren()` method to detach and access children
                  beyond the lifetime of their parent.
     */
    public var children: [Item] {
        get {
            return Children(of: self).compactMap { $0 as? Item }
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
     Adds an item to the beginning of the list.

     - Parameters:
        - child: The item to add.
     - Returns: `true` if successful, otherwise `false`.
     */
    @discardableResult
    public func prepend(child: Item) -> Bool {
        guard cmark_node_prepend_child(cmark_node, child.cmark_node) == 1 else { return false }

        child.managed = false

        return true
    }

    /**
     Adds an to the end of the list.

     - Parameters:
        - child: The item to add.
     - Returns: `true` if successful, otherwise `false`.
    */
    @discardableResult
    public func append(child: Item) -> Bool {
        guard cmark_node_append_child(cmark_node, child.cmark_node) == 1 else { return false }

        child.managed = false

        return true
    }

    /**
     Inserts an item to the list before a specified sibling.

     - Parameters:
        - child: The item to add.
        - sibling: The item before which the new item is added
     - Returns: `true` if successful, otherwise `false`.
    */
    @discardableResult
    public func insert(child: Item, before sibling: Item) -> Bool {
        guard cmark_node_insert_before(sibling.cmark_node, child.cmark_node) == 1 else { return false }

        child.managed = false

        return true
    }

    /**
     Inserts an item to the list after a specified sibling.

     - Parameters:
        - child: The item to add.
        - sibling: The item after which the new item is added
     - Returns: `true` if successful, otherwise `false`.
    */
    @discardableResult
    public func insert(child: Item, after sibling: Item) -> Bool {
        guard cmark_node_insert_after(sibling.cmark_node, child.cmark_node) == 1 else { return false }

        child.managed = false

        return true
    }

    /**
     Replaces an item with the specified node.

     - Parameters:
        - child: The item to replace.
        - replacement: The item to replace the existing item.
     - Returns: `true` if successful, otherwise `false`.
    */
    @discardableResult
    public func replace(child: Item, with replacement: Item) -> Bool {
        guard cmark_node_replace(child.cmark_node, replacement.cmark_node) == 1 else { return false }

        replacement.managed = false
        child.managed = true

        return true
    }

    /**
     Removes an item from the list.

     - Parameters:
        - child: The item to remove.
     - Returns: `true` if successful, otherwise `false`.
     */
    @discardableResult
    public func remove(child: Item) -> Bool {
        guard child.parent == self else { return false }
        child.unlink()

        return true
    }

    /**
     Removes and returns the list's items.

     - Returns: An array of list items.
     */
    @discardableResult
    public func removeChildren() -> [Item] {
        var children: [Item] = []

        for child in self.children {
            guard remove(child: child) else { continue }
            children.append(child)
        }

        return children
    }
}

// MARK: -

extension List.Item {
    /**
     The elements contained by the list item.

     - Important: The returned child nodes are valid only during the lifetime of their parent.
                  Use the `removeChildren()` method to detach and access children
                  beyond the lifetime of their parent.
     */
    public var children: [Node] {
        get {
            return Children(of: self).map { $0 }
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
     Adds a node to the beginning of the list item's children.

     - Parameters:
        - child: The node to add.
     - Returns: `true` if successful, otherwise `false`.
     */
    @discardableResult
    public func prepend(child: Node) -> Bool {
        guard cmark_node_prepend_child(cmark_node, child.cmark_node) == 1 else { return false }
        child.managed = false
        return true
    }

    /**
     Adds a node to the end of the list item's children.

     - Parameters:
        - child: The node to add.
     - Returns: `true` if successful, otherwise `false`.
    */
    @discardableResult
    public func append(child: Node) -> Bool {
        guard cmark_node_append_child(cmark_node, child.cmark_node) == 1 else { return false }
        
        child.managed = false
        
        return true
    }

    /**
     Inserts a node to the list item's children before a specified sibling.

     - Parameters:
        - child: The node to add.
        - sibling: The child before which the node is added
     - Returns: `true` if successful, otherwise `false`.
    */
    @discardableResult
    public func insert(child: Node, before sibling: Node) -> Bool {
        guard cmark_node_insert_before(sibling.cmark_node, child.cmark_node) == 1 else { return false }
        child.managed = false
        return true
    }

    /**
     Inserts a node to the list item's children after a specified sibling.

     - Parameters:
        - child: The node to add.
        - sibling: The child after which the node is added
     - Returns: `true` if successful, otherwise `false`.
    */
    @discardableResult
    public func insert(child: Node, after sibling: Node) -> Bool {
        guard cmark_node_insert_after(sibling.cmark_node, child.cmark_node) == 1 else { return false }
        child.managed = false
        return true
    }

    /**
     Replaces a node with a specified node.

     - Parameters:
        - child: The node to replace.
        - replacement: The node to replace the existing node.
     - Returns: `true` if successful, otherwise `false`.
    */
    @discardableResult
    public func replace(child: Node, with replacement: Node) -> Bool {
        guard cmark_node_replace(child.cmark_node, replacement.cmark_node) == 1 else { return false }
        replacement.managed = false
        return true
    }

    /**
     Removes a node from the list item's children.

     - Parameters:
        - child: The node to remove.
     - Returns: `true` if successful, otherwise `false`.
     */
    @discardableResult
    public func remove(child: Node) -> Bool {
        guard child.parent == self else { return false }
        child.unlink()

        return true
    }

    /**
     Removes and returns the list item's children.

     - Returns: An array of nodes.
     */
    public func removeChildren() -> [Node] {
        var children: [Node] = []

        for child in self.children {
            guard remove(child: child) else { continue }
            children.append(child)
        }

        return children
    }
}

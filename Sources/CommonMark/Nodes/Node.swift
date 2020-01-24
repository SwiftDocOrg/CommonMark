import cmark

/// A CommonMark node.
open class Node {
    public class var cmark_node_type: cmark_node_type {
        assertionFailure("should be overridden in subclass")
        return CMARK_NODE_NONE
    }

    /// A pointer to the underlying `cmark_node` for the node.
    public final let cmark_node: OpaquePointer

    /// Whether the underlying `cmark_node` should be freed upon deallocation.
    public var managed: Bool = false

    /**
     Creates a node from a `cmark_node` pointer.

     - Parameter cmark_node: A `cmark_node` pointer.
     */
    init(_ cmark_node: OpaquePointer) {
        self.cmark_node = cmark_node
        assert(type(of: self) != Node.self)
        assert(cmark_node_get_type(cmark_node) == type(of: self).cmark_node_type)
    }

    convenience init(nonrecursively: Void) {
        self.init()
    }

    convenience init() {
        self.init(cmark_node_new(type(of: self).cmark_node_type))
        self.managed = true
    }

    deinit {
        guard managed else { return }
        cmark_node_free(cmark_node)
    }

    /**
     Creates and returns the `Node` subclass corresponding to
     the type of a `cmark_node` pointer.

     - Parameter cmark_node: A `cmark_node` pointer.
     - Returns: An instance of a `Node` subclass.
     */
    static func create(for cmark_node: OpaquePointer!) -> Node? {
        guard let cmark_node = cmark_node else { return nil }

        switch cmark_node_get_type(cmark_node) {
        case CMARK_NODE_BLOCK_QUOTE:
            return BlockQuote(cmark_node)
        case CMARK_NODE_LIST:
            switch cmark_node_get_list_type(cmark_node) {
            case CMARK_BULLET_LIST:
                return List(cmark_node)
            case CMARK_ORDERED_LIST:
                return List(cmark_node)
            default:
                return nil
            }
        case CMARK_NODE_ITEM:
            return List.Item(cmark_node)
        case CMARK_NODE_CODE_BLOCK:
            return CodeBlock(cmark_node)
        case CMARK_NODE_HTML_BLOCK:
            return HTMLBlock(cmark_node)
        case CMARK_NODE_PARAGRAPH:
            return Paragraph(cmark_node)
        case CMARK_NODE_HEADING:
            return Heading(cmark_node)
        case CMARK_NODE_THEMATIC_BREAK:
            return ThematicBreak(cmark_node)
        case CMARK_NODE_TEXT:
            return Text(cmark_node)
        case CMARK_NODE_SOFTBREAK:
            return SoftLineBreak(cmark_node)
        case CMARK_NODE_LINEBREAK:
            return HardLineBreak(cmark_node)
        case CMARK_NODE_CODE:
            return Code(cmark_node)
        case CMARK_NODE_HTML_INLINE:
            return HTML(cmark_node)
        case CMARK_NODE_EMPH:
            return Emphasis(cmark_node)
        case CMARK_NODE_STRONG:
            return Strong(cmark_node)
        case CMARK_NODE_LINK:
            return Link(cmark_node)
        case CMARK_NODE_IMAGE:
            return Image(cmark_node)
        default:
            return nil
        }
    }

    /// The line and column range of the element in the document.
    public var range: ClosedRange<Document.Position> {
        let start = Document.Position(line: numericCast(cmark_node_get_start_line(cmark_node)), column: numericCast(cmark_node_get_start_column(cmark_node)))
        let end = Document.Position(line: numericCast(cmark_node_get_end_line(cmark_node)), column: numericCast(cmark_node_get_end_column(cmark_node)))

        return start...end
    }

    /// The parent of the element, if any.
    public var parent: Node? {
        return Node.create(for: cmark_node_parent(cmark_node))
    }
}

// MARK: - Equatable

extension Node: Equatable {
    public static func == (lhs: Node, rhs: Node) -> Bool {
        return lhs.cmark_node == rhs.cmark_node
    }
}

// MARK: - Hashable

extension Node: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(cmark_node_get_type(cmark_node).rawValue)
        hasher.combine(cmark_render_commonmark(cmark_node, 0, 0))
    }
}

// MARK: - CustomStringConvertible

extension Node: CustomStringConvertible {
    public var description: String {
        return String(cString: cmark_render_commonmark(cmark_node, 0, 0))
    }
}

import cmark

/// An element with literal contents.
public protocol Literal: Node {
    init(literal: String?)
}

public extension Literal where Self: Node {
    init(literal: String? = nil) {
        self.init(cmark_node_new(Self.cmark_node_type))
        self.literal = literal
    }
}

// MARK: -

extension Literal {
    /// The literal contents of the element.
    public var literal: String? {
        get {
            return String(cString: cmark_node_get_literal(cmark_node))
        }
        
        set {
            cmark_node_set_literal(cmark_node, newValue)
        }
    }
}


// MARK: -

extension Code: Literal {}
extension CodeBlock: Literal {}
extension RawHTML: Literal {}
extension HTMLBlock: Literal {}
extension Text: Literal {}

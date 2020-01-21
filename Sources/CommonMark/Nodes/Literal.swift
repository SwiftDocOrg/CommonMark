import cmark

/// An element with literal contents.
public protocol Literal: Node {}

// MARK: -

extension Literal {
    /// The literal contents of the element.
    public var literal: String? {
        get {
            return String(cString: cmark_node_get_literal(cmark_node))
        }

        set {
            if let value = newValue {
                cmark_node_set_literal(cmark_node, value)
            } else {
                cmark_node_set_literal(cmark_node, nil)
            }
        }
    }
}

// MARK: -

extension Code: Literal {}
extension CodeBlock: Literal {}
extension HTML: Literal {}
extension HTMLBlock: Literal {}
extension Text: Literal {}

import cmark

/**
 An HTML block.

 From the [CommonMark Spec](https://spec.commonmark.org/0.29):

 > ## [4.6 HTML blocks](https://spec.commonmark.org/0.29/#html-blocks)
 >
 > An HTML block is a group of lines that is treated as raw HTML
 > (and will not be escaped in HTML output).
 */
public final class HTMLBlock: Node {
    override class var cmark_node_type: cmark_node_type { return CMARK_NODE_HTML_BLOCK }

    public convenience init(_ literal: String? = nil) {
        self.init(cmark_node_new(Self.cmark_node_type))
        self.managed = true
        self.literal = literal
    }

    public convenience init(children: [Inline] = []) {
        self.init(cmark_node_new(Self.cmark_node_type))
        self.managed = true
        guard !children.isEmpty else { return }
        for child in children {
            append(child: child)
        }
    }

    required init(_ cmark_node: OpaquePointer) {
        precondition(cmark_node_get_type(cmark_node) == Self.cmark_node_type)
        super.init(cmark_node)
    }
}

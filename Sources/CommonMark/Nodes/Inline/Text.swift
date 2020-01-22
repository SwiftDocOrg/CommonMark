import cmark

/**
 Textual content.

 From the [CommonMark Spec](https://spec.commonmark.org/0.29):

 > ## [6.11 Textual content](https://spec.commonmark.org/0.29/#textual-content)
 >
 > Any characters not given an interpretation by the above rules
 > will be parsed as plain textual content.
*/
public final class Text: Node {
    override class var cmark_node_type: cmark_node_type { return CMARK_NODE_TEXT }

    public convenience init(_ literal: String? = nil) {
        self.init(cmark_node_new(Self.cmark_node_type))
        self.managed = true
        self.literal = literal
    }

    required init(_ cmark_node: OpaquePointer) {
        precondition(cmark_node_get_type(cmark_node) == Self.cmark_node_type)
        super.init(cmark_node)
    }
}

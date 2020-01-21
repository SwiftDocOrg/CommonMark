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
    required init(_ cmark_node: OpaquePointer) {
        precondition(cmark_node_get_type(cmark_node) == CMARK_NODE_TEXT)
        super.init(cmark_node)
    }
}

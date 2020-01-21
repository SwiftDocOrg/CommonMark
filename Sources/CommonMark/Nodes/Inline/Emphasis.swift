import cmark

/**
 An emphasis span.

 From the [CommonMark Spec](https://spec.commonmark.org/0.29):

 > ## [6.4 Emphasis and strong emphasis](https://spec.commonmark.org/0.29/#emphasis-and-strong-emphasis)
*/
public final class Emphasis: Node {
    required init(_ cmark_node: OpaquePointer) {
        precondition(cmark_node_get_type(cmark_node) == CMARK_NODE_EMPH)
        super.init(cmark_node)
    }
}

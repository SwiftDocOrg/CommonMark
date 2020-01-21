import cmark

/**
 A code span.

 From the [CommonMark Spec](https://spec.commonmark.org/0.29):

 > ## [6.3 Code spans](https://spec.commonmark.org/0.29/#code-spans)
 >
 > A code span begins with a backtick string
 > and ends with a backtick string of equal length.
*/
public final class Code: Node {
    required init(_ cmark_node: OpaquePointer) {
        precondition(cmark_node_get_type(cmark_node) == CMARK_NODE_CODE)
        super.init(cmark_node)
    }
}

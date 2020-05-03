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
    override class var cmark_node_type: cmark_node_type { return CMARK_NODE_CODE }
}

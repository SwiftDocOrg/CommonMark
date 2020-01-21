import cmark

/**
 A hard line break.

 From the [CommonMark Spec](https://spec.commonmark.org/0.29):

 > ## [6.9 Hard line breaks](https://spec.commonmark.org/0.29/#hard-line-breaks)
 >
 > A line break (not in a code span or HTML tag)
 > that is preceded by two or more spaces
 > and does not occur at the end of a block
 > is parsed as a hard line break
 > (rendered in HTML as a `<br />` tag):
 */
public final class HardLineBreak: Node {
    required init(_ cmark_node: OpaquePointer) {
        precondition(cmark_node_get_type(cmark_node) == CMARK_NODE_LINEBREAK)
        super.init(cmark_node)
    }
}

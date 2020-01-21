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
    required init(_ cmark_node: OpaquePointer) {
        precondition(cmark_node_get_type(cmark_node) == CMARK_NODE_HTML_BLOCK)
        super.init(cmark_node)
    }
}

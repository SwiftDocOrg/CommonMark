import cmark

/**
 Raw HTML.

 From the [CommonMark Spec](https://spec.commonmark.org/0.29):

 > ## [6.8 Raw HTML](https://spec.commonmark.org/0.29/#raw-html)
 >
 > Text between `<` and `>` that looks like an HTML tag
 > is parsed as a raw HTML tag
 > and will be rendered in HTML without escaping.
 > Tag and attribute names are not limited to current HTML tags,
 > so custom tags (and even, say, DocBook tags) may be used.
*/
public final class HTML: Node {
    required init(_ cmark_node: OpaquePointer) {
        precondition(cmark_node_get_type(cmark_node) == CMARK_NODE_HTML_INLINE)
        super.init(cmark_node)
    }
}

import cmark

/**
 A paragraph.
 
 From the [CommonMark Spec](https://spec.commonmark.org/0.29/#thematic-breaks):

 > ## [4.8 Paragraphs](https://spec.commonmark.org/0.29/#paragraphs)
 >
 > A sequence of non-blank lines
 > that cannot be interpreted as other kinds of blocks
 > forms a paragraph.
 > The contents of the paragraph are the result of
 > parsing the paragraph’s raw content as inlines.
 > The paragraph’s raw content is formed by
 > concatenating the lines and removing initial and final whitespace.
*/
public final class Paragraph: Node {
    required init(_ cmark_node: OpaquePointer) {
        precondition(cmark_node_get_type(cmark_node) == CMARK_NODE_PARAGRAPH)
        super.init(cmark_node)
    }
}

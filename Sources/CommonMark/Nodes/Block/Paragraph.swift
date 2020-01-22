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
    override class var cmark_node_type: cmark_node_type { return CMARK_NODE_PARAGRAPH }

    public convenience init(text string: String) {
        self.init(children: [Text(string)])
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

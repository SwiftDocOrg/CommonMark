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

    public convenience init(text string: String, replacingNewLinesWithBreaks: Bool = true) {
        let children: [Inline & Node]
        if replacingNewLinesWithBreaks {
            children = string.split(separator: "\n", omittingEmptySubsequences: false)
                             .flatMap { ($0.isEmpty ? [HardLineBreak()] : [Text(literal: "\($0)"), SoftLineBreak()]) }
        } else {
            children = [Text(literal: string)]
        }

        self.init(children: children)
    }

    public convenience init(children: [Inline & Node] = []) {
        self.init()
        guard !children.isEmpty else { return }
        for child in children {
            append(child: child)
        }
    }

    public convenience init(@ContainerOfInlineElementsBuilder _ builder: () -> [Inline & Node]) {
        self.init(children: builder())
    }
}

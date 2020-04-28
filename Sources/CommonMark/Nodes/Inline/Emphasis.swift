import cmark

/**
 An emphasis span.

 From the [CommonMark Spec](https://spec.commonmark.org/0.29):

 > ## [6.4 Emphasis and strong emphasis](https://spec.commonmark.org/0.29/#emphasis-and-strong-emphasis)
*/
public final class Emphasis: Node {
    override class var cmark_node_type: cmark_node_type { return CMARK_NODE_EMPH }

    public convenience init(text string: String) {
        self.init(children: [Text(literal: string)])
    }
}

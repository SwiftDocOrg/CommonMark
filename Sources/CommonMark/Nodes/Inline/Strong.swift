import cmark

/**
 A strong emphasis span.

 From the [CommonMark Spec](https://spec.commonmark.org/0.29):

 > ## [6.4 Emphasis and strong emphasis](https://spec.commonmark.org/0.29/#emphasis-and-strong-emphasis)
*/
public final class Strong: Node {
    override class var cmark_node_type: cmark_node_type { return CMARK_NODE_STRONG }

    public convenience init(text string: String) {
        self.init(children: [Text(literal: string)])
    }

    public convenience init(children: [Inline & Node] = []) {
        self.init()
        guard !children.isEmpty else { return }
        for child in children {
            append(child: child)
        }
    }

    #if swift(>=5.4)
    public convenience init(@ContainerOfInlineElementsBuilder _ builder: () -> [Inline & Node]) {
        self.init(children: builder())
    }
    #endif
}

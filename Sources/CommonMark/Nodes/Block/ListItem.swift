import cmark

/**
 A bullet list.

 From the [CommonMark Spec](https://spec.commonmark.org/0.29):

 > ## [5.3 Lists](https://spec.commonmark.org/0.29/#lists)
 >
 > A list is a sequence of one or more list items of the same type.
 > The list items may be separated by any number of blank lines.
*/
public final class ListItem: Node {
    override class var cmark_node_type: cmark_node_type { return CMARK_NODE_ITEM }

    public convenience init(children: [Block] = []) {
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

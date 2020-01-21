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
    required init(_ cmark_node: OpaquePointer) {
        precondition(cmark_node_get_type(cmark_node) == CMARK_NODE_ITEM)
        super.init(cmark_node)
    }
}

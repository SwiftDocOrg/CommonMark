import cmark

/**
 A bullet list.

 From the [CommonMark Spec](https://spec.commonmark.org/0.29):

 > ## [5.3 Lists](https://spec.commonmark.org/0.29/#lists)
 >
 > A list is a sequence of one or more list items of the same type.
 > The list items may be separated by any number of blank lines.

 > ## [5.2 List items](https://spec.commonmark.org/0.29/#list-items)
 >
 > A list marker is a bullet list marker or an ordered list marker.
 >
 > A bullet list marker is a -, +, or * character.
*/
public final class BulletList: Node {
    required init(_ cmark_node: OpaquePointer) {
        precondition(cmark_node_get_type(cmark_node) == CMARK_NODE_LIST)
        precondition(cmark_node_get_list_type(cmark_node) == CMARK_BULLET_LIST)
        super.init(cmark_node)
    }
}

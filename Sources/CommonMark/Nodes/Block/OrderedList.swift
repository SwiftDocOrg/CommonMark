import cmark

/**
 An ordered list.

 From the [CommonMark Spec](https://spec.commonmark.org/0.29):

 > ## [5.3 Lists](https://spec.commonmark.org/0.29/#lists)
 >
 > A list is a sequence of one or more list items of the same type.
 > The list items may be separated by any number of blank lines.

 > ## [5.2 List items](https://spec.commonmark.org/0.29/#list-items)
 >
 > A list marker is a bullet list marker or an ordered list marker.
 >
 > An ordered list marker is a sequence of 1–9 arabic digits (0-9),
 > followed by either a . character or a ) character.
 > (The reason for the length limit is that
 > with 10 digits we start seeing integer overflows in some browsers.)
*/
public final class OrderedList: Node {
    required init(_ cmark_node: OpaquePointer) {
        precondition(cmark_node_get_type(cmark_node) == CMARK_NODE_LIST)
        precondition(cmark_node_get_list_type(cmark_node) == CMARK_ORDERED_LIST)
        super.init(cmark_node)
    }

    public var listStart: Int {
        get { return Int(cmark_node_get_list_start(cmark_node)) }
        set { cmark_node_set_list_start(cmark_node, Int32(newValue)) }
    }
}

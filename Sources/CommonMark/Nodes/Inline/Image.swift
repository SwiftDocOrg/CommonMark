import cmark

/**
 An image.

 From the [CommonMark Spec](https://spec.commonmark.org/0.29):

 > ## [6.6 Images](https://spec.commonmark.org/0.29/#images)
*/
public final class Image: Node {
    required init(_ cmark_node: OpaquePointer) {
        precondition(cmark_node_get_type(cmark_node) == CMARK_NODE_IMAGE)
        super.init(cmark_node)
    }

    public var urlString: String? {
        get { return String(cString: cmark_node_get_url(cmark_node)) }
        set {
            if let value = newValue {
                cmark_node_set_url(cmark_node, value)
            } else {
                cmark_node_set_url(cmark_node, nil)
            }
        }
    }

    public var title: String? {
        get { return String(cString: cmark_node_get_title(cmark_node)) }
        set {
            if let value = newValue {
                cmark_node_set_title(cmark_node, value)
            } else {
                cmark_node_set_title(cmark_node, nil)
            }
        }
    }
}

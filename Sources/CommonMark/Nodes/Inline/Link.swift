import cmark

/**
 A link.

 From the [CommonMark Spec](https://spec.commonmark.org/0.29):

 > ## [6.5 Links](https://spec.commonmark.org/0.29/#links)
 >
 > A link contains link text (the visible text),
 > a link destination (the URI that is the link destination),
 > and optionally a link title.

 > ## [4.7 Link reference definitions](https://spec.commonmark.org/0.29/#link-reference-definitions)

 > ## [6.7 Autolinks](https://spec.commonmark.org/0.29/#autolinks)
 */
public final class Link: Node {
    required init(_ cmark_node: OpaquePointer) {
        precondition(cmark_node_get_type(cmark_node) == CMARK_NODE_LINK)
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

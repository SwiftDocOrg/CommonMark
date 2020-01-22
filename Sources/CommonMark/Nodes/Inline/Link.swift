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
    override class var cmark_node_type: cmark_node_type { return CMARK_NODE_LINK }
    
    public convenience init(urlString: String, title: String? = nil, text string: String) {
        self.init(cmark_node_new(Self.cmark_node_type))
        self.managed = true
        self.init(urlString: urlString, title: title, children: [Text(string)])
    }

    public convenience init(urlString: String?, title: String?, children: [Inline]) {
        self.init(cmark_node_new(Self.cmark_node_type))
        self.managed = true
        self.urlString = urlString
        self.title = title
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

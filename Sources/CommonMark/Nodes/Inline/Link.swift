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
        self.init(urlString: urlString, title: title, children: [Text(literal: string)])
    }

    public convenience init(urlString: String?, title: String?, children: [Inline & Node] = []) {
        self.init()
        self.urlString = urlString
        self.title = title
        guard !children.isEmpty else { return }
        for child in children {
            append(child: child)
        }
    }

    public convenience init(urlString: String?, title: String?, @ContainerOfInlineElementsBuilder _ builder: () -> [Inline & Node]) {
        self.init(urlString: urlString, title: title, children: builder())
    }
}

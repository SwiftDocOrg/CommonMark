import cmark

/**
 An image.

 From the [CommonMark Spec](https://spec.commonmark.org/0.29):

 > ## [6.6 Images](https://spec.commonmark.org/0.29/#images)
*/
public final class Image: Node {
    override class var cmark_node_type: cmark_node_type { return CMARK_NODE_IMAGE }

    public convenience init(urlString: String, title: String? = nil) {
        self.init(cmark_node_new(Self.cmark_node_type))
        self.managed = true
        self.urlString = urlString
        self.title = title
    }

    required init(_ cmark_node: OpaquePointer) {
        precondition(cmark_node_get_type(cmark_node) == Self.cmark_node_type)
        super.init(cmark_node)
    }
}

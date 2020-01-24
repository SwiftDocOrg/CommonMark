import cmark

/**
 An image.

 From the [CommonMark Spec](https://spec.commonmark.org/0.29):

 > ## [6.6 Images](https://spec.commonmark.org/0.29/#images)
*/
public final class Image: Node {
    public override class var cmark_node_type: cmark_node_type { return CMARK_NODE_IMAGE }

    public convenience init(urlString: String, title: String? = nil) {
        self.init()
        self.urlString = urlString
        self.title = title
    }
}

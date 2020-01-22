import cmark

public protocol Linked: Node {}
extension Link: Linked {}
extension Image: Linked {}

extension Linked {
    public var urlString: String? {
        get {
            return String(cString: cmark_node_get_url(cmark_node))
        }

        set {
            cmark_node_set_url(cmark_node, newValue)
        }
    }

    public var title: String? {
        get {
            return String(cString: cmark_node_get_title(cmark_node))
        }

        set {
            cmark_node_set_title(cmark_node, newValue)
        }
    }
}

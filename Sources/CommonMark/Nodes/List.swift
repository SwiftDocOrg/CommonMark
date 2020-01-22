import cmark

/// A list element.
public protocol List: ContainerBlock {}

// MARK: -

extension List {
    /**
     Whether the list is loose.

     From the [CommonMark Spec](https://spec.commonmark.org/0.29):

     > A list is loose if any of its constituent list items
     > are separated by blank lines,
     > or if any of its constituent list items
     > directly contain two block-level elements with a blank line between them.
     > Otherwise a list is tight.
     */
    public var loose: Bool {
        get {
            return !tight
        }

        set {
            tight = !newValue
        }
    }

    /**
     Whether the list is tight.

     - SeeAlso: `loose`
    */
    public var tight: Bool {
        get {
            return cmark_node_get_list_tight(cmark_node) == 1 ? true : false
        }

        set {
            cmark_node_set_list_tight(cmark_node, newValue ? 1 : 0)
        }
    }
}


// MARK: -

extension BulletList: List {}
extension OrderedList: List {}

/// A list element.
public protocol List: ContainerBlock {}

// MARK: -

extension List {
    /// The items in the list.
    public var items: [ListItem] {
        return children.compactMap { $0 as? ListItem }
    }
}

// MARK: -

extension BulletList: List {}
extension OrderedList: List {}

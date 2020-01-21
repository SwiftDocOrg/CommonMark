/// A block structure element.
public protocol Block: Node {}

extension Block {
    public var children: [Node] {
        return Array(Children(of: self))
    }
}

// MARK: -

/// A block that can contain other blocks.
public protocol ContainerBlock: Block {}

extension BlockQuote: ContainerBlock {}
extension BulletList: ContainerBlock {}
extension OrderedList: ContainerBlock {}
extension ListItem: ContainerBlock {}

// MARK: -

/// A block that can only contain inline elements.
public protocol LeafBlock: Block {}

extension Heading: LeafBlock {}
extension Paragraph: LeafBlock {}
extension HTMLBlock: LeafBlock {}
extension CodeBlock: LeafBlock {}
extension ThematicBreak: LeafBlock {}

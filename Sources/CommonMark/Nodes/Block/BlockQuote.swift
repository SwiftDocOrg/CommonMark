import cmark

/**
 A block quote.

 From the [CommonMark Spec](https://spec.commonmark.org/0.29):

 > ## [5.1 Block quotes](https://spec.commonmark.org/0.29/#block-quotes)
 >
 > A block quote marker consists of 0-3 spaces of initial indent,
 > plus (a) the character > together with a following space,
 > or (b) a single character > not followed by a space.
 */
public final class BlockQuote: Node {
    override class var cmark_node_type: cmark_node_type { return CMARK_NODE_BLOCK_QUOTE }

    public convenience init(children: [Block] = []) {
        self.init(cmark_node_new(Self.cmark_node_type))
        self.managed = true
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

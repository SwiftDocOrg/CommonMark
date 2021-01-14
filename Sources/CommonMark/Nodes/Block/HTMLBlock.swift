import cmark

/**
 An HTML block.

 From the [CommonMark Spec](https://spec.commonmark.org/0.29):

 > ## [4.6 HTML blocks](https://spec.commonmark.org/0.29/#html-blocks)
 >
 > An HTML block is a group of lines that is treated as raw HTML
 > (and will not be escaped in HTML output).
 */
public final class HTMLBlock: Node {
    override class var cmark_node_type: cmark_node_type { return CMARK_NODE_HTML_BLOCK }

    public convenience init(literal: String? = nil) {
        self.init()
        self.literal = literal
    }

    #if swift(>=5.4)
    public static func wrap(
        @ContainerOfBlocksBuilder _ body: () -> [Block & Node],
        before: () -> String?,
        after: () -> String?
    ) -> [Block & Node] {
        var blocks: [Block & Node] = []

        blocks.append(HTMLBlock(literal: before()))
        blocks.append(contentsOf: body())
        blocks.append(HTMLBlock(literal: after()))

        return blocks
    }
    #endif
}

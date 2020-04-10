import cmark

/**
 A hard line break.

 From the [CommonMark Spec](https://spec.commonmark.org/0.29):

 > ## [6.9 Hard line breaks](https://spec.commonmark.org/0.29/#hard-line-breaks)
 >
 > A line break (not in a code span or HTML tag)
 > that is preceded by two or more spaces
 > and does not occur at the end of a block
 > is parsed as a hard line break
 > (rendered in HTML as a `<br />` tag):
 */
public final class HardLineBreak: Node {
    override class var cmark_node_type: cmark_node_type { return CMARK_NODE_LINEBREAK }

    public convenience init() {
        self.init(nonrecursively: ())
    }
}

import cmark

/**
 A code block.

 From the [CommonMark Spec](https://spec.commonmark.org/0.29):

 > ## [4.4 Indented code blocks](https://spec.commonmark.org/0.29/#indented-code-blocks)
 >
 > An indented code block is composed of
 > one or more indented chunks separated by blank lines.
 > An indented chunk is a sequence of non-blank lines,
 > each indented four or more spaces.
 > The contents of the code block are the literal contents of the lines,
 > including trailing line endings,
 > minus four spaces of indentation.
 > An indented code block has no info string.

 > ## [4.5 Fenced code blocks](https://spec.commonmark.org/0.29/#fenced-code-blocks)
 >
 > A code fence is a sequence of
 > at least three consecutive backtick characters (`) or tildes (~).
 > (Tildes and backticks cannot be mixed.)
 > A fenced code block begins with a code fence,
 > indented no more than three spaces.
 */
public final class CodeBlock: Node {
    required init(_ cmark_node: OpaquePointer) {
        precondition(cmark_node_get_type(cmark_node) == CMARK_NODE_CODE_BLOCK)
        super.init(cmark_node)
    }

    public var fenceInfo: String? {
        get {
            return String(cString: cmark_node_get_fence_info(cmark_node))
        }

        set {
            if let value = newValue {
                cmark_node_set_fence_info(cmark_node, value)
            } else {
                cmark_node_set_fence_info(cmark_node, nil)
            }
        }
    }
}

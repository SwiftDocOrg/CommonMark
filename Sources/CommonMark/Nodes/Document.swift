import cmark

/// A CommonMark document.
public final class Document: Node {
    /// Options for parsing CommonMark text.
    public struct ParsingOptions: OptionSet {
        public var rawValue: Int32

        public init(rawValue: Int32 = CMARK_OPT_DEFAULT) {
            self.rawValue = rawValue
        }

        /**
         Convert ASCII punctuation characters
         to "smart" typographic punctuation characters.

         - Straight quotes (" and ')
           become curly quotes (“ ” and ‘ ’)
         - Dashes (-- and ---) become
           en-dashes (–) and em-dashes (—)
         - Three consecutive full stops (...) become an ellipsis (…)
         */
        public static let smart = RenderingOptions(rawValue: CMARK_OPT_SMART)
    }

    /// A position within a document.
    public struct Position: Hashable {
        /**
         The line number.

         Line numbers start at 1 and increase monotonically.
         */
        public var line: Int

        /**
         The line number.

         Column numbers start at 1 and increase monotonically.
        */
        public var column: Int
    }

    /// An error when creating a document.
    public enum Error: Swift.Error {
        /// A document couldn't be constructed with the provided source.
        case invalid
    }

    public override class var cmark_node_type: cmark_node_type { return CMARK_NODE_DOCUMENT }

    /**
     Creates a document from a CommonMark string.

     - Parameter commonmark: A CommonMark string.
     - Throws:
        - `Document.Error.invalid`
          if a document couldn't be constructed with the provided source.
     */
    public convenience init(_ commonmark: String, options: ParsingOptions = []) throws {
        guard let cmark_node = cmark_parse_document(commonmark, commonmark.utf8.count, 0) else {
            throw Error.invalid
        }

        self.init(cmark_node)
    }

    public convenience init(children: [Child] = []) {
        self.init()
        guard !children.isEmpty else { return }
        for child in children {
            append(child: child)
        }
    }

    // MARK: - Rendering

    /// Formats for rendering a document.
    public enum RenderingFormat {
        /// CommonMark
        case commonmark

        /// HTML
        case html

        /// XML
        case xml

        /// LaTeX
        case latex

        /// Manpage
        case manpage
    }

    /// Options for rendering a CommonMark document.
    public struct RenderingOptions: OptionSet {
        public var rawValue: Int32

        public init(rawValue: Int32 = CMARK_OPT_DEFAULT) {
            self.rawValue = rawValue
        }

        /**
         Render raw HTML and "unsafe" links.

         A link is considered to be "unsafe"
         if its scheme is `javascript:`, `vbscript:`, or `file:`,
         or if its scheme is `data:`
         and the MIME type of the encoded data isn't one of the following:

         - `image/png`
         - `image/gif`
         - `image/jpeg`
         - `image/webp`

         By default,
         raw HTML is replaced by a placeholder HTML comment.
         Unsafe links are replaced by empty strings.

         - Important: This option has an effect only when rendering HTML.
         */
        public static let unsafe = RenderingOptions(rawValue: CMARK_OPT_UNSAFE)

        /**
         Render softbreak elements as spaces.

         - Important: This option has no effect when rendering XML.
         */
        public static let noBreaks = RenderingOptions(rawValue: CMARK_OPT_NOBREAKS)

        /**
         Render softbreak elements as hard line breaks.

         - Important: This option has no effect when rendering XML.
         */
        public static let hardBreaks = RenderingOptions(rawValue: CMARK_OPT_HARDBREAKS)

        /**
         Include a `data-sourcepos` attribute on all block elements
         to map the rendered output to the source input.

         - Important: This option has an effect only when rendering HTML or XML.
         */
        public static let includeSourcePosition = RenderingOptions(rawValue: CMARK_OPT_SOURCEPOS)
    }

    /**
     Render a document into a given format with the specified options.

     - Parameters:
        - format: The rendering format
        - options: The rendering options
        - width: The column width used to wrap lines for rendered output
                 (`.commonmark`, `.man`, and `.latex` formats only).
                 Must be a positive number.
                 Pass `0` to prevent line wrapping.
     - Returns: The rendered text.
     */
    public func render(format: RenderingFormat, options: RenderingOptions = [], width: Int = 0) -> String {
        precondition(width >= 0)

        switch format {
        case .commonmark:
            return String(cString: cmark_render_commonmark(cmark_node, options.rawValue, Int32(clamping: width)))
        case .html:
            return String(cString: cmark_render_html(cmark_node, options.rawValue))
        case .xml:
            return String(cString: cmark_render_xml(cmark_node, options.rawValue))
        case .latex:
            return String(cString: cmark_render_latex(cmark_node, options.rawValue, Int32(clamping: width)))
        case .manpage:
            return String(cString: cmark_render_man(cmark_node, options.rawValue, Int32(clamping: width)))
        }
    }
}

// MARK: - Comparable

extension Document.Position: Comparable {
    public static func < (lhs: Document.Position, rhs: Document.Position) -> Bool {
        return lhs.line < rhs.line || (lhs.line == rhs.line && lhs.column < rhs.column)
    }
}

// MARK: - CustomReflectable

extension Document: CustomReflectable {
    public var customMirror: Mirror {
        return Mirror(self, unlabeledChildren: children)
    }
}

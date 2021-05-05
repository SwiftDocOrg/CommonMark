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
        public static let smart = Self(rawValue: CMARK_OPT_SMART)
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

    override class var cmark_node_type: cmark_node_type { return CMARK_NODE_DOCUMENT }

    /**
     Creates a document from a CommonMark string.

     - Parameter commonmark: A CommonMark string.
     - Throws:
        - `Document.Error.invalid`
          if a document couldn't be constructed with the provided source.
     */
    public convenience init(_ commonmark: String, options: ParsingOptions = []) throws {
        guard let cmark_node = cmark_parse_document(commonmark, commonmark.utf8.count, options.rawValue)
        else {
            throw Error.invalid
        }

        self.init(cmark_node)
        self.managed = true
    }

    public convenience init(children: [Block & Node] = []) {
        self.init()
        guard !children.isEmpty else { return }
        for child in children {
            append(child: child)
        }
    }

    #if swift(>=5.4)
    public convenience init(options: ParsingOptions = [], @ContainerOfBlocksBuilder _ builder: () -> [Block & Node]) {
        self.init(children: builder())
    }
    #endif
}

// MARK: - Comparable

extension Document.Position: Comparable {
    public static func < (lhs: Document.Position, rhs: Document.Position) -> Bool {
        return lhs.line < rhs.line || (lhs.line == rhs.line && lhs.column < rhs.column)
    }
}

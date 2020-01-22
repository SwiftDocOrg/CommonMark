import cmark

/**
 An ordered list.

 From the [CommonMark Spec](https://spec.commonmark.org/0.29):

 > ## [5.3 Lists](https://spec.commonmark.org/0.29/#lists)
 >
 > A list is a sequence of one or more list items of the same type.
 > The list items may be separated by any number of blank lines.

 > ## [5.2 List items](https://spec.commonmark.org/0.29/#list-items)
 >
 > A list marker is a bullet list marker or an ordered list marker.
 >
 > An ordered list marker is a sequence of 1–9 arabic digits (0-9),
 > followed by either a . character or a ) character.
 > (The reason for the length limit is that
 > with 10 digits we start seeing integer overflows in some browsers.)
*/
public final class OrderedList: Node {
    public enum Delimiter {
        case period
        case parenthesis

        init?(rawValue: cmark_delim_type) {
            switch rawValue {
            case CMARK_PERIOD_DELIM:
                self = .period
            case CMARK_PAREN_DELIM:
                self = .parenthesis
            default:
                return nil
            }
        }

        var rawValue: cmark_delim_type {
            switch self {
            case .period:
                return CMARK_PERIOD_DELIM
            case .parenthesis:
                return CMARK_PAREN_DELIM
            }
        }
    }

    override class var cmark_node_type: cmark_node_type { return CMARK_NODE_LIST }

    public convenience init(listStart: Int = 1, delimiter: Delimiter = .period, items: [ListItem] = []) {
        self.init(cmark_node_new(Self.cmark_node_type))
        self.managed = true
        self.listStart = listStart
        guard !items.isEmpty else { return }
        for child in children {
            append(child: child)
        }
    }

    required init(_ cmark_node: OpaquePointer) {
        precondition(cmark_node_get_type(cmark_node) == Self.cmark_node_type)
        precondition(cmark_node_get_list_type(cmark_node) == CMARK_ORDERED_LIST)
        super.init(cmark_node)
    }

    public var delimiter: Delimiter {
        get {
            return Delimiter(rawValue: cmark_node_get_list_delim(cmark_node))!
        }

        set {
            cmark_node_set_list_delim(cmark_node, newValue.rawValue)
        }
    }

    public var listStart: Int {
        get {
            return numericCast(cmark_node_get_list_start(cmark_node))
        }

        set {
            cmark_node_set_list_start(cmark_node, numericCast(newValue))
        }
    }
}

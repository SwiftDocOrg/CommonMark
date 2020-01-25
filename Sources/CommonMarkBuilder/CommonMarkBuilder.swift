@_exported import CommonMark

@_functionBuilder
public struct CommonMarkBuilder {

    // MARK: buildBlock

    public static func buildBlock(_ children: InlineConvertible...) -> InlineConvertible {
        return Paragraph(children: children.flatMap { $0.inlineValue })
    }

    public static func buildBlock(_ children: BlockConvertible...) -> BlockConvertible {
        return Fragment(children: children.flatMap { $0.blockValue })
    }

    public static func buildBlock(_ children: ListItemConvertible...) -> ListItemConvertible {
        return Fragment(children: children.flatMap { $0.listItemValue })
    }

    // MARK: buildIf

    public static func buildIf(_ child: InlineConvertible?) -> InlineConvertible {
        return child ?? Text()
    }

    public static func buildIf(_ child: BlockConvertible?) -> BlockConvertible {
        return child ?? Fragment { "" }
    }

    public static func buildIf(_ child: ListItemConvertible?) -> ListItemConvertible {
        return child ?? Fragment { "" }
    }

    // MARK: buildEither

    public static func buildEither(first: InlineConvertible) -> InlineConvertible {
        return first
    }

    public static func buildEither(second: InlineConvertible) -> InlineConvertible {
        return second
    }

    public static func buildEither(first: BlockConvertible) -> BlockConvertible {
        return first
    }

    public static func buildEither(second: BlockConvertible) -> BlockConvertible {
        return second
    }

    public static func buildEither(first: ListItemConvertible) -> ListItemConvertible {
        return first
    }

    public static func buildEither(second: ListItemConvertible) -> ListItemConvertible {
        return second
    }
}

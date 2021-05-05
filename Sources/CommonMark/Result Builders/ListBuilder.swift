#if swift(>=5.4)
@resultBuilder
public struct ListBuilder {
    /// Required by every result builder to build combined results from
    /// statement blocks.
    public static func buildBlock(_ components: [List.Item]...) -> [List.Item] {
        return components.flatMap { $0 }
    }

    /// If declared, provides contextual type information for statement
    /// expressions to translate them into partial results.
    public static func buildExpression(_ expression: String?) -> [List.Item] {
        guard let expression = expression, !expression.isEmpty else { return [] }

        return [List.Item(children: [Paragraph(text: expression)])]
    }

    /// If declared, provides contextual type information for statement
    /// expressions to translate them into partial results.
    public static func buildExpression(_ expression: Inline & Node) -> [List.Item] {
        return [List.Item(children: [expression])]
    }

    /// If declared, provides contextual type information for statement
    /// expressions to translate them into partial results.
    public static func buildExpression(_ expression: Block & Node) -> [List.Item] {
        return [List.Item(children: [expression])]
    }

    /// If declared, provides contextual type information for statement
    /// expressions to translate them into partial results.
    public static func buildExpression(_ expression: [Inline & Node]) -> [List.Item] {
        return [List.Item(children: expression)]
    }

    /// If declared, provides contextual type information for statement
    /// expressions to translate them into partial results.
    public static func buildExpression(_ expression: [Block & Node]) -> [List.Item] {
        return [List.Item(children: expression)]
    }

    /// Enables support for `if` statements that do not have an `else`.
    public static func buildOptional(_ component: [List.Item]?) -> [List.Item] {
        return component ?? []
    }

    /// With buildEither(second:), enables support for 'if-else' and 'switch'
    /// statements by folding conditional results into a single result.
    public static func buildEither(first component: [List.Item]) -> [List.Item] {
        return component
    }

    /// With buildEither(first:), enables support for 'if-else' and 'switch'
    /// statements by folding conditional results into a single result.
    public static func buildEither(second component: [List.Item]) -> [List.Item] {
        return component
    }

    /// Enables support for 'for..in' loops by combining the
    /// results of all iterations into a single result.
    public static func buildArray(_ components: [[List.Item]]) -> [List.Item] {
        return components.flatMap { $0 }
    }

    /// If declared, this will be called on the partial result of an 'if
    /// #available' block to allow the result builder to erase type
    /// information.
    public static func buildLimitedAvailability(_ component: [List.Item]) -> [List.Item] {
        return component
    }
}
#endif

@resultBuilder
public struct ContainerOfInlineElementsBuilder {
    /// Required by every result builder to build combined results from
    /// statement blocks.
    public static func buildBlock(_ components: [Inline & Node]...) -> [Inline & Node] {
        components.flatMap { $0 }
    }

    /// If declared, provides contextual type information for statement
    /// expressions to translate them into partial results.
    public static func buildExpression(_ expression: String?) -> [Inline & Node] {
        guard let expression = expression, !expression.isEmpty else { return [] }
        return [Text(literal: expression)]
    }

    /// If declared, provides contextual type information for statement
    /// expressions to translate them into partial results.
    public static func buildExpression(_ expression: Inline & Node) -> [Inline & Node] {
        [expression]
    }

    /// If declared, provides contextual type information for statement
    /// expressions to translate them into partial results.
    public static func buildExpression(_ expression: [Inline & Node]) -> [Inline & Node] {
        expression
    }

    /// Enables support for `if` statements that do not have an `else`.
    public static func buildOptional(_ component: [Inline & Node]?) -> [Inline & Node] {
        component ?? []
    }

    /// With buildEither(second:), enables support for 'if-else' and 'switch'
    /// statements by folding conditional results into a single result.
    public static func buildEither(first component: [Inline & Node]) -> [Inline & Node] {
        component
    }

    /// With buildEither(first:), enables support for 'if-else' and 'switch'
    /// statements by folding conditional results into a single result.
    public static func buildEither(second component: [Inline & Node]) -> [Inline & Node] {
        component
    }

    /// Enables support for 'for..in' loops by combining the
    /// results of all iterations into a single result.
    public static func buildArray(_ components: [[Inline & Node]]) -> [Inline & Node] {
        components.flatMap { $0 }
    }

    /// If declared, this will be called on the partial result of an 'if
    /// #available' block to allow the result builder to erase type
    /// information.
    public static func buildLimitedAvailability(_ component: [Inline & Node]) -> [Inline & Node] {
        component
    }
}

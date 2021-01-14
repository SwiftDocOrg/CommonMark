#if swift(>=5.4)
@resultBuilder
public struct ContainerOfBlocksBuilder {
    /// Required by every result builder to build combined results from
    /// statement blocks.
    public static func buildBlock(_ components: [Block & Node]...) -> [Block & Node] {
        components.flatMap { $0 }
    }

    /// If declared, provides contextual type information for statement
    /// expressions to translate them into partial results.
    public static func buildExpression(_ expression: Block & Node) -> [Block & Node] {
        [expression]
    }

    /// If declared, provides contextual type information for statement
    /// expressions to translate them into partial results.
    public static func buildExpression(_ expression: [Block & Node]) -> [Block & Node] {
        expression
    }

    /// If declared, provides contextual type information for statement
    /// expressions to translate them into partial results.
    public static func buildExpression(_ expression: Section) -> [Block & Node] {
        expression.children
    }

    /// If declared, provides contextual type information for statement
    /// expressions to translate them into partial results.
    public static func buildExpression(_ expression: String?) -> [Block & Node] {
        guard let expression = expression, !expression.isEmpty else { return [] }
        
        let document = try? Document(expression)
        // Unlink the children from the document node to prevent dangling pointers to the parent.
        let children = document?.removeChildren() ?? []
        return children
    }

    /// Enables support for `if` statements that do not have an `else`.
    public static func buildOptional(_ component: [Block & Node]?) -> [Block & Node] {
        component ?? []
    }

    /// With buildEither(second:), enables support for 'if-else' and 'switch'
    /// statements by folding conditional results into a single result.
    public static func buildEither(first component: [Block & Node]) -> [Block & Node] {
        component
    }

    /// With buildEither(first:), enables support for 'if-else' and 'switch'
    /// statements by folding conditional results into a single result.
    public static func buildEither(second component: [Block & Node]) -> [Block & Node] {
        component
    }

    /// Enables support for 'for..in' loops by combining the
    /// results of all iterations into a single result.
    public static func buildArray(_ components: [[Block & Node]]) -> [Block & Node] {
        components.flatMap { $0 }
    }

    /// If declared, this will be called on the partial result of an 'if
    /// #available' block to allow the result builder to erase type
    /// information.
    public static func buildLimitedAvailability(_ component: [Block & Node]) -> [Block & Node] {
        component
    }
}
#endif

@_functionBuilder
public struct StringBuilder {
    // MARK: buildBlock

    public static func buildBlock(_ string: String) -> String {
        return string
    }

    public static func buildBlock(_ strings: String...) -> String {
        return strings.joined(separator: "\n\n")
    }

    // MARK: buildIf

    public static func buildIf(_ string: String?) -> String {
        return string ?? ""
    }

    // MARK: buildEither

    public static func buildEither(first: String) -> String {
        return first
    }

    public static func buildEither(second: String) -> String {
        return second
    }
}

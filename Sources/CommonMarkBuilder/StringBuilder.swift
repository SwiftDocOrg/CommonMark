@_functionBuilder
public struct StringBuilder {
    public static func buildBlock(_ string: String) -> String {
        return string
    }

    public static func buildBlock(_ strings: String...) -> String {
        return strings.joined(separator: "\n\n")
    }
}

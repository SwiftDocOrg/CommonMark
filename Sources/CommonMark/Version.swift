import cmark

/// A version number.
public typealias Version = (major: Int, minor: Int, patch: Int)

/// The version of CommonMark used by this package.
public let version: Version = (
    major: Int((cmark_version() & 0xFF0000) >> 16),
    minor: Int((cmark_version() & 0xFF00) >> 8),
    patch: Int((cmark_version() & 0xFF))
)

# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [0.5.1] - 2021-05-04

### Added

- Added `replace(child:with:)` methods for container nodes.
  #26 by @mattt.

### Fixed

- Fixed documentation for `List`.
  #29 by @mattt.

### Changed

- Changed implementation of `Hashable` conformance for `Node`.
  Previously the hash value of a node was computed from its content.
  Now it's computed from the opaque cmark pointer.
  #30 by @Lukas-Stuehrk.

## [0.5.0] - 2021-01-14

### Added

- Added support for the visitor pattern,
  by adding `protocol Visitor`/`protocol Visitable` & `enum VisitorContinueKind`.
  #13 by @regexident.
### Fixed

- Fixed document parsing options.
  #21 by @regexident.
- Fixed memory leaks.
  #22 by @regexident.

## [0.4.0] - 2020-05-01

### Added

- Added a changelog.
  #17 by @mattt.

### Changed

- Changed `render` method,
  as well as nested `RenderingFormat` and `RenderingOptions` types,
  from `Document` to `Node`.
  #18 by @mattt.

### Fixed

- Fixed abbreviation for "Universal Declaration of Human Rights" (UDHR)
  throughout project.
  #12 by @regexident.

## [0.3.2] - 2020-04-24

### Fixed

- Fixed implementations of `insert` methods.
  #10 by @Lukas-Stuehrk 

## [0.3.1] - 2020-04-23

### Fixed

- Fixed error caused by missing a case for `CMARK_NODE_DOCUMENT` in `Node.create`.
  #8 by @mattt.

### Removed

- Removed `assertionFailure` in `Node` `cmark_node_type` class property.
  1903d99 by @mattt.

## [0.3.0] - 2020-04-10

### Added

- Added implementations of `buildIf` and `buildEither` to `StringBuilder`.
  #5 by @mattt.

### Changed

- **Breaking Change**.
  Changed `HTML`, renaming it to `RawHTML`.
  #4 by @mattt.
- Changed `Node` to conform to `Codable`.
  #6 by @mattt.
- Changed access level of `Node` from `open` to `public`.
  #6 by @mattt.
- Change access level for APIs referencing `cmark_node` to `internal`
  #6 by @mattt.
- Changed swift-cmark dependency to more recent version.
  2239c9c by @mattt.

### Fixed

- Fixed error 'Top-level Document encoded as string JSON fragment.'
  727e38f by @mattt.

## [0.2.2] - 2020-02-06

### Fixed

- Fixed bug in how closed ranges are constructed from reported source positions.
  #2 by @mattt.

## [0.2.1] - 2020-01-25

### Added

- Added `ForEach` type to `CommonMarkBuilder` module.
  3cee5da by @mattt.
- Added implementations of `buildIf` and `buildEither` to `CommonMarkBuilder`.
  a125d23 by @mattt.
- Added convenience initializers to `List` for mapping sequence of values.
  ec61c45 by @mattt.

### Changed

- Changed `List.Item` to allow initialization with `Inline` or `Block` children.
  c21468c0 by @mattt.
- Changed inline types conform to `ListItemConvertible`.
  ffe900bf by @mattt.
- Changed access of children to `public` and conformed them to `Block & Node`.
  5e88c519 by @mattt

### Removed

- Removed conformance of `Document` to `CustomReflectable`.
  6b92588e by @mattt.
- Removed `Child` typealias in favor of explicit compound types.
  c9a5b199 by @mattt.

## [0.2.0] - 2020-01-24

### Added

- Added CommonMarkBuilder interface.
  79a98dd by @mattt.

### Changed

- Changed access level for `Node` to open.
  79a98dd by @mattt.
- Changed initialization pattern of `Node`.
  79a98dd by @mattt.
- Changed `ListItem`, renaming it to `List.Item`.
  79a98dd by @mattt.
- Changed initializers for `Node` subclasses
  79a98dd by @mattt.

### Removed

- Removed `BulletList` and `OrderedList`,
  consolidating them into into a new `List` type.
  79a98dd by @mattt.

## [0.1.2] - 2020-01-22

### Changed

- Changed cmark dependency to pin to a tag in a fork.
  2f5a2a4 by @mattt.

## [0.1.1] - 2020-01-22

### Changed

- Changed cmark dependency to pin to a specific revision.
  90704ff by @mattt.

## [0.1.0] - 2020-01-22

### Added

- Added node creation and mutation functionality.
  a41ba246 by @mattt.

## [0.0.1] - 2020-01-27

Initial release.

[unreleased]: https://github.com/SwiftDocOrg/CommonMark/compare/0.5.1...main
[0.5.1]: https://github.com/SwiftDocOrg/CommonMark/releases/tag/0.5.1
[0.5.0]: https://github.com/SwiftDocOrg/CommonMark/releases/tag/0.5.0
[0.4.0]: https://github.com/SwiftDocOrg/CommonMark/releases/tag/0.4.0
[0.3.2]: https://github.com/SwiftDocOrg/CommonMark/releases/tag/0.3.2
[0.3.1]: https://github.com/SwiftDocOrg/CommonMark/releases/tag/0.3.1
[0.3.0]: https://github.com/SwiftDocOrg/CommonMark/releases/tag/0.3.0
[0.2.2]: https://github.com/SwiftDocOrg/CommonMark/releases/tag/0.2.2
[0.2.1]: https://github.com/SwiftDocOrg/CommonMark/releases/tag/0.2.1
[0.2.0]: https://github.com/SwiftDocOrg/CommonMark/releases/tag/0.2.0
[0.1.2]: https://github.com/SwiftDocOrg/CommonMark/releases/tag/0.1.2
[0.1.1]: https://github.com/SwiftDocOrg/CommonMark/releases/tag/0.1.1
[0.1.0]: https://github.com/SwiftDocOrg/CommonMark/releases/tag/0.1.0
[0.0.1]: https://github.com/SwiftDocOrg/CommonMark/releases/tag/0.0.1

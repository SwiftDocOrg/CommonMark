# CommonMark

A Swift package for parsing and rendering [CommonMark][commonmark].
It's built on top of [libcmark][cmark] 
and fully compliant with the [CommonMark Spec][commonmark].

```swift
import CommonMark

let markdown = #"""
# [Universal Declaration of Human Rights][uhdr]

## Article 1.

All human beings are born free and equal in dignity and rights. 
They are endowed with reason and conscience 
and should act towards one another in a spirit of brotherhood.

[uhdr]: https://www.un.org/en/universal-declaration-human-rights/ "View full version"
"""#

let document = try Document(markdown)


// Rendering to HTML, XML, LaTeX, and Manpage
let html = document.render(format: .html) // <h1> [ ... ]
let xml = document.render(format: .xml) // <?xml [ ... ]
let latex = document.render(format: .latex) // \section{ [ ... ]
let manpage = document.render(format: .manpage) // .SH [ ... ]

// To get back CommonMark text, 
// you can either render with the `.commonmark` format...
document.render(format: .commonmark) // # [Universal  [ ... ]
// ...or call `description`
// (individual nodes also return their CommonMark representation as their description)
document.description // # [Universal  [ ... ]


// Inspecting the document tree
document.children.count // 3

let heading = document.children[0] as! Heading
heading.headerLevel // 1
heading.children.count // 1

let link = heading.children[0] as! Link
link.urlString // "https://www.un.org/en/universal-declaration-human-rights/")
link.title // "View full version"

let subheading = document.children[1] as! Heading
subheading.headerLevel // 2
subheading.children.count // 1

let subheadingText = subheading.children[0] as! Text
subheadingText.literal // "Article 1."

let paragraph = document.children[2] as! Paragraph
paragraph.description // "All human beings [ ... ]"
paragraph.range.lowerBound // (line: 5, column: 1)
paragraph.range.upperBound // (line: 7, column: 62)
```

### CommonMark Spec Compliance

This package passes all of the 649 test cases
in the latest version (0.29) of the [CommonMark Spec][commonmark spec]:

```console
$ swift test
	 Executed 649 tests, with 0 failures (0 unexpected) in 0.178 (0.201) seconds
```

## Requirements

- Swift 5.1+

## Installation

### Swift Package Manager

Add the CommonMark package to your target dependencies in `Package.swift`:

```swift
import PackageDescription

let package = Package(
  name: "YourProject",
  dependencies: [
    .package(
        url: "https://github.com/SwiftDocOrg/CommonMark",
        from: "0.0.1"
    ),
  ]
)
```

Then run the `swift build` command to build your project.

## License

MIT

## Contact

Mattt ([@mattt](https://twitter.com/mattt))

[cmark]: https://github.com/commonmark/cmark
[commonmark]: https://commonmark.org
[commonmark spec]: https://spec.commonmark.org

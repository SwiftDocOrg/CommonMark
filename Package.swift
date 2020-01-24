// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CommonMark",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "CommonMark",
            targets: ["CommonMark"]
        ),
        .library(
            name: "CommonMarkBuilder",
            targets: ["CommonMarkBuilder"]
        ),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/SwiftDocOrg/swift-cmark.git", from: Version(0, 28, 3, prereleaseIdentifiers: [], buildMetadataIdentifiers: ["20200110", "2a76603"])),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "CommonMark",
            dependencies: ["cmark"]
        ),
        .target(
            name: "CommonMarkBuilder",
            dependencies: ["CommonMark"]
        ),
        .testTarget(
            name: "CommonMarkTests",
            dependencies: ["CommonMark"]
        ),
        .testTarget(
            name: "CommonMarkSpecTests",
            dependencies: ["CommonMark"]
        ),
        .testTarget(
            name: "CommonMarkBuilderTests",
            dependencies: ["CommonMarkBuilder", "CommonMark" /* , "CommonMarkTests" */ ]
        ),
    ]
)

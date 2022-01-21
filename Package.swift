// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "X11Kit",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "X11Kit",
            targets: ["X11Kit"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "X11Kit",
            dependencies: ["X11_implementation"]
        ),
        .target(
            name: "X11_implementation",
            dependencies: [],
            path: "Sources/implementation",
            publicHeadersPath: "include"
        ),
        .testTarget(
            name: "X11KitTests",
            dependencies: ["X11Kit"]
        )
    ],
    cxxLanguageStandard: .gnucxx11
)

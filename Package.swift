// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "automerge-experiment",
    products: [
        .library(
            name: "automerge-experiment",
            targets: ["automerge-experiment"]),
    ],
    dependencies: [
        .package(url: "https://github.com/heckj/automergeC", from: "0.2.0"),
        
    ],
    targets: [
        .target(
            name: "automerge-experiment",
            dependencies: [
                .product(name: "automergeC", package: "automergeC"),
        
            ]),
        .testTarget(
            name: "automerge-experimentTests",
            dependencies: [
                "automerge-experiment",
                .product(name: "automergeC", package: "automergeC"),
        
            ]),
    ]
)

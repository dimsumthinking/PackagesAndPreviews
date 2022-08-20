// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "BasicType",
    platforms: [
      .iOS("16.0"),
      .macOS("13.0")
    ],
    products: [
        .library(
            name: "BasicType",
            targets: ["BasicType"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "BasicType",
            dependencies: []),
        .testTarget(
            name: "BasicTypeTests",
            dependencies: ["BasicType"]),
    ]
)

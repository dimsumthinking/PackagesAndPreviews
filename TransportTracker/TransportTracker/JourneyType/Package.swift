// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "JourneyType",
    platforms: [
      .iOS("16.0"),
      .macOS("13.0")
    ],
    products: [
        .library(
            name: "JourneyType",
            targets: ["JourneyType"]),
    ],
    dependencies: [
      .package(path: "../BasicType")
    ],
    targets: [
        .target(
            name: "JourneyType",
            dependencies: ["BasicType"]),
        .testTarget(
            name: "JourneyTypeTests",
            dependencies: ["JourneyType"]),
    ]
)

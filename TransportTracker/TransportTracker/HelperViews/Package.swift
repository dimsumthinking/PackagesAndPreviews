// swift-tools-version: 5.7

import PackageDescription

let package = Package(
  name: "HelperViews",
  platforms: [
    .iOS("16.0"),
    .macOS("13.0")
  ],
  products: [
    .library(
      name: "HelperViews",
      targets: ["HelperViews"]),
  ],
  dependencies: [
    .package(path: "../BasicType")
  ],
  targets: [
    .target(
      name: "HelperViews",
      dependencies: ["BasicType"]),
    .testTarget(
      name: "HelperViewsTests",
      dependencies: ["HelperViews"]),
  ]
)

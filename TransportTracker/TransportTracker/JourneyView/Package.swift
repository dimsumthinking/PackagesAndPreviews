// swift-tools-version: 5.7

import PackageDescription

let package = Package(
  name: "JourneyView",
  platforms: [
    .iOS("16.0"),
    .macOS("13.0")
  ],
  products: [
    .library(
      name: "JourneyView",
      targets: ["JourneyView"]),
  ],
  dependencies: [
    .package(path: "../JourneyType"),
    .package(path: "../HelperViews")
  ],
  targets: [
    .target(
      name: "JourneyView",
      dependencies: ["JourneyType", "HelperViews"]),
    .testTarget(
      name: "JourneyViewTests",
      dependencies: ["JourneyView"]),
  ]
)

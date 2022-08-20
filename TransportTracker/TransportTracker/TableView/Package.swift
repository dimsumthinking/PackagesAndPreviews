// swift-tools-version: 5.7

import PackageDescription

let package = Package(
  name: "TableView",
  platforms: [
    .iOS("16.0"),
    .macOS("13.0")
  ],
  products: [
    .library(
      name: "TableView",
      targets: ["TableView"]),
  ],
  dependencies: [
    .package(path: "../DataAndPersistence"),
    .package(path: "../JourneyView"),
    .package(path: "../HelperViews")
  ],
  targets: [
    .target(
      name: "TableView",
      dependencies: ["DataAndPersistence", "JourneyView", "HelperViews"]),
    .testTarget(
      name: "TableViewTests",
      dependencies: ["TableView"]),
  ]
)

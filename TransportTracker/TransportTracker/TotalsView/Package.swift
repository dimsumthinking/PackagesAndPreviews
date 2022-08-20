// swift-tools-version: 5.7

import PackageDescription

let package = Package(
  name: "TotalsView",
  platforms: [
    .iOS("16.0"),
    .macOS("13.0")
  ],
  products: [
    .library(
      name: "TotalsView",
      targets: ["TotalsView"]),
  ],
  dependencies: [
    .package(path: "../BasicType"),
    .package(path: "../DataAndPersistence"),
    .package(path: "../HelperViews")
  ],
  targets: [
    .target(
      name: "TotalsView",
      dependencies: ["BasicType", "DataAndPersistence", "HelperViews"]),
    .testTarget(
      name: "TotalsViewTests",
      dependencies: ["TotalsView"]),
  ]
)

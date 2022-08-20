// swift-tools-version: 5.7

import PackageDescription

let package = Package(
  name: "DataAndPersistence",
  platforms: [
    .iOS("16.0"),
    .macOS("13.0")
  ],
  products: [
    .library(
      name: "DataAndPersistence",
      targets: ["DataAndPersistence"]),
  ],
  dependencies: [
    .package(path: "../JourneyType")
  ],
  targets: [
    .target(
      name: "DataAndPersistence",
      dependencies: ["JourneyType"]),
    .testTarget(
      name: "DataAndPersistenceTests",
      dependencies: ["DataAndPersistence"]),
  ]
)

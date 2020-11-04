// swift-tools-version:5.3
//
//  Copyright (c) 2020 Lucas Abijmil.

import PackageDescription

let package = Package(
  name: "LAComponents",
  platforms: [.iOS(.v13), .macOS(.v10_15), .tvOS(.v13), .watchOS(.v6)],
  products: [
    .library(
      name: "LAComponents",
      targets: ["LAComponents"]),
  ],
  dependencies: [
    .package(name: "Lottie", url: "https://github.com/airbnb/lottie-ios.git", from: "3.0.0")
  ],
  targets: [
    .target(
      name: "LAComponents",
      dependencies: [._byNameItem(name: "Lottie", condition: .when(platforms: [.iOS, .tvOS]))]),
    .testTarget(
      name: "LAComponentsTests",
      dependencies: ["LAComponents"]),
  ]
)

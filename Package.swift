// swift-tools-version:5.5

import PackageDescription

let package = Package(
  name: "Twift",
  platforms: [
    .macOS(.v12), .iOS(.v15)
  ],
  products: [
    .library(name: "Twift", targets: ["Twift"])
  ],
  dependencies: [
    .package(url: "https://github.com/apple/swift-crypto.git", "1.0.0" ..< "3.0.0")
  ],
  targets: [
    .target(
      name: "Twift",
      dependencies: [
        .product(name: "Crypto", package: "swift-crypto")
      ],
      path: "Sources"),
    .testTarget(
      name: "TwiftTests",
      dependencies: ["Twift"]),
  ]
)
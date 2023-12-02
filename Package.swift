// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Retainable",
    platforms: [
        .iOS(.v13),
        .macOS(.v12),
        .tvOS(.v14),
        .visionOS(.v1),
        .watchOS(.v6),
        .driverKit(.v20),
    ],
    products: [
        .library(
            name: "Retainable",
            type: .static,
            targets: ["Retainable"]),
    ],
    targets: [
        .target(
            name: "Retainable"),
        .testTarget(
            name: "RetainableTests",
            dependencies: ["Retainable"]),
    ]
)

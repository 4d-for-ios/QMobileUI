// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "QMobileUI",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "QMobileUI",
            targets: ["QMobileUI"]),
    ],
    dependencies: [
        .package(url: "https://github.com/IBAnimatable/IBAnimatable.git", .upToNextMajor(from: "6.0.0")),
        .package(url: "https://github.com/DaveWoodCom/XCGLogger.git", from: "7.0.0"),
    ],
    targets: [
        .target(
            name: "QMobileUI",
            dependencies: ["XCGLogger", "IBAnimatable"],
            path: "Sources")
    ]
)

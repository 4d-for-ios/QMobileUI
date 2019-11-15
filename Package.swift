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
        .package(url: "https://github.com/phimage/Prephirences.git", .revision("HEAD")),
        .package(url: "https://github.com/IBAnimatable/IBAnimatable.git", .revision("HEAD")),
        //.package(url: "https://github.com/devicekit/DeviceKit.git", .upToNextMajor(from: "2.3.0")),
        .package(url: "https://github.com/phimage/DeviceKit.git", .branch("feature/macos")),
        .package(url: "https://github.com/DaveWoodCom/XCGLogger.git", from: "7.0.0"),
        .package(url: "https://github.com/4d-for-ios/QMobileAPI.git", .revision("HEAD"))
    ],
    targets: [
        .target(
            name: "QMobileUI",
            dependencies: ["XCGLogger", "IBAnimatable", "DeviceKit", "Prephirences", "QMobileAPI"],
            path: "Sources")
    ]
)

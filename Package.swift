// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftTB2PKit",
    platforms: [
        .macOS(.v12), .iOS(.v15), .tvOS(.v15), .watchOS(.v10)
    ],
    products: [
        .library(
            name: "SwiftTB2PKit",
            targets: ["SwiftTB2PKit"],
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/SimplyDanny/SwiftLintPlugins", from: "0.62.0")
    ],
    targets: [
        .target(
            name: "SwiftTB2PKit",
            resources: [
                .process("TB2PTables.bin")
            ],
            plugins: [.plugin(name: "SwiftLintBuildToolPlugin", package: "SwiftLintPlugins")],
        ),
        .testTarget(
            name: "SwiftTB2PKitTests",
            dependencies: ["SwiftTB2PKit"],
        ),
    ],
)

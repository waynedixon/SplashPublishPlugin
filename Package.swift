// swift-tools-version:5.6

/**
*  Splash plugin for Publish
*  Copyright (c) John Sundell 2019
*  MIT license, see LICENSE file for details
*  Forked by Wayne Dixon 2023
*/

import PackageDescription

let package = Package(
    name: "SplashPublishPlugin",
    platforms: [.macOS(.v12)],
    products: [
        .library(
            name: "SplashPublishPlugin",
            targets: ["SplashPublishPlugin"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/waynedixon/Publish.git", from: "0.9.0"),
        .package(url: "https://github.com/johnsundell/Splash.git", from: "0.16.0")
    ],
    targets: [
        .target(
            name: "SplashPublishPlugin",
            dependencies: ["Splash", "Publish"]
        ),
        .testTarget(
            name: "SplashPublishPluginTests",
            dependencies: ["SplashPublishPlugin"]
        ),
    ]
)

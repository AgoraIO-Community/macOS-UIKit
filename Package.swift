// swift-tools-version:5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AgoraUIKit_macOS",
    platforms: [.macOS(.v10_15)],
    products: [
        .library(name: "AgoraUIKit", targets: ["AgoraUIKit"]),
        .library(name: "AgoraRtmControl", targets: ["AgoraRtmControl"])
    ],
    dependencies: [
        .package(
            name: "AgoraRtcKit",
            url: "https://github.com/AgoraIO/AgoraRtcEngine_macOS",
            .upToNextMinor(from: Version(3, 7, 0))
        ),
        .package(
            name: "AgoraRtmKit",
            url: "https://github.com/AgoraIO/AgoraRtm_macOS",
            .upToNextMinor(from: Version(1, 4, 10))
        )
    ],
    targets: [
        .target(
            name: "AgoraUIKit",
            dependencies: [.product(name: "RtcBasic", package: "AgoraRtcKit")],
            path: "Sources/Agora-UIKit"
        ),
        .target(
            name: "AgoraRtmControl",
            dependencies: ["AgoraRtmKit"],
            path: "Sources/AgoraRtmControl"
        ),
        .testTarget(
            name: "AgoraUIKit-Tests", dependencies: ["AgoraUIKit", "AgoraRtmControl"],
            path: "Tests/Agora-UIKit-Tests"
        )
    ]
)

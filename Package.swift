// swift-tools-version:5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AgoraUIKit_iOS",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "AgoraUIKit", targets: ["AgoraUIKit"]),
        .library(name: "AgoraRtmControl", targets: ["AgoraRtmControl"]),
    ],
    dependencies: [
        .package(
            name: "AgoraRtcKit",
            url: "https://github.com/AgoraIO/AgoraRtcEngine_iOS",
            "3.4.5"..."3.6.2"
        ),
        .package(
            name: "AgoraRtmKit",
            url: "https://github.com/AgoraIO/AgoraRtm_iOS",
            from: "1.4.10"
        )
    ],
    targets: [
        .target(
            name: "AgoraUIKit",
            dependencies: ["AgoraRtcKit"],
//            dependencies: [.product(name: "RtcBasic", package: "AgoraRtcKit")],
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

// swift-tools-version:5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AgoraUIKit_iOS",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "AgoraUIKit_iOS", targets: ["AgoraUIKit_iOS"]),
    ],
    dependencies: [.package(
        name: "AgoraRtcKit",
        url: "https://github.com/AgoraIO/AgoraRtcEngine_iOS",
        from: "3.4.5"
    )],
    targets: [
        .target(
            name: "AgoraUIKit_iOS",
            dependencies: ["AgoraRtcKit"],
            path: "Sources/Agora-UIKit"
        )
    ]
)
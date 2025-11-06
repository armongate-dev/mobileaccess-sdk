// swift-tools-version: 5.1
import PackageDescription

let package = Package(
    name: "ArmongateMobileAccessSDK",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "ArmongateMobileAccessSDK", targets: ["ArmongateMobileAccessSDKWrapper"]),
    ],
    dependencies: [
        .package(url: "https://github.com/armongate-dev/mobileaccess-core.git", exact: "0.0.5"),
    ],
    targets: [
        .binaryTarget(
            name: "ArmongateMobileAccessSDK",
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.5/ArmongateMobileAccessSDK-0.0.5.xcframework.zip",
            checksum: "4facefc8a0b1019884385c2a3cd7b41a105b9ab415fc731441d270ae4a4b9be4"
        ),
        .target(
            name: "ArmongateMobileAccessSDKWrapper",
            dependencies: [
                "ArmongateMobileAccessSDK",
                .product(name: "VoramCore", package: "mobileaccess-core"),
            ]
        )
    ]
)

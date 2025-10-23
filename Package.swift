// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "ArmongateMobileAccessSDK",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "ArmongateMobileAccessSDK", targets: ["ArmongateMobileAccessSDK"]),
    ],
    targets: [
        .binaryTarget(
            name: "ArmongateMobileAccessSDK",
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.2-beta.26/ArmongateMobileAccessSDK-0.0.2-beta.26.xcframework.zip",
            checksum: "b117d2814f5e2a3592cb36b0438fe029bdb90f116f761cc645e21e174b47b129"
        )
    ]
)

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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.1-beta.21/ArmongateMobileAccessSDK-0.0.1-beta.21.xcframework.zip",
            checksum: "0bcebc6c591ec8ff2d22c9d125493b3308b1425e4d90948ff71f4c9c866733ac"
        )
    ]
)

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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.1/ArmongateMobileAccessSDK-0.0.1.xcframework.zip",
            checksum: "89b59452e8e1057a5876710882692bf83d909276ac57876fc57ed817018c4b4b"
        )
    ]
)

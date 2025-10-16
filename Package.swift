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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.1-beta.6/ArmongateMobileAccessSDK-0.0.1-beta.6.xcframework.zip",
            checksum: "1b46f7f2546ccaa7b7312d90fb1d5fd9be17822353d40833af49a310d12dea1e"
        )
    ]
)

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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.3-beta.33/ArmongateMobileAccessSDK-0.0.3-beta.33.xcframework.zip",
            checksum: "75c27cd59c84372a806d5ae440d896aaeb800abbf6b4c01ac30f7f520dec4b1b"
        )
    ]
)

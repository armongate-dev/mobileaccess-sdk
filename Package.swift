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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.2-beta.32/ArmongateMobileAccessSDK-0.0.2-beta.32.xcframework.zip",
            checksum: "5e6f6b6ee15ddf6bb27498e17f65e5d87d11f945a8cb036482102c3294995bd3"
        )
    ]
)

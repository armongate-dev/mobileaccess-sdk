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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.2-beta.28/ArmongateMobileAccessSDK-0.0.2-beta.28.xcframework.zip",
            checksum: "94d74c1ee15e4b6132b8e2558d76b63fde0ed6a064f331aab6e683988a72a042"
        )
    ]
)

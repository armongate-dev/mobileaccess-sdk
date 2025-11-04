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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.3-beta.24/ArmongateMobileAccessSDK-0.0.3-beta.24.xcframework.zip",
            checksum: "b87739fd02ee88611645f98772215626fbc78e6d8677d5a56002e41f4070e0dc"
        )
    ]
)

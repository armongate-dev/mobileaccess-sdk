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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.3-beta.7/ArmongateMobileAccessSDK-0.0.3-beta.7.xcframework.zip",
            checksum: "2d8400a92e3e893f8e46fe36a1e9f660e39bce1eec5572e663988edd532e2cb2"
        )
    ]
)

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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.1-beta.19/ArmongateMobileAccessSDK-0.0.1-beta.19.xcframework.zip",
            checksum: "f7fd14eb90f2d383c7eea5300ba1d80cc5ff1e0156bb81f524a5c9ff476a3d80"
        )
    ]
)

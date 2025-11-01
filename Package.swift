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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.3-beta.2/ArmongateMobileAccessSDK-0.0.3-beta.2.xcframework.zip",
            checksum: "e109fd2b73b5da4cadb2437bfec41c177e8f08813622e3f8a4ab2a2208d7eef8"
        )
    ]
)

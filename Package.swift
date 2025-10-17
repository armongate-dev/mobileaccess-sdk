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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.1-beta.13/ArmongateMobileAccessSDK-0.0.1-beta.13.xcframework.zip",
            checksum: "dca570093998b8c866caec3a700cb37f4b740f58b2dea53099f4beb09ca9a517"
        )
    ]
)

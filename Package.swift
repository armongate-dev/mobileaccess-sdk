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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.1-beta.8/ArmongateMobileAccessSDK-0.0.1-beta.8.xcframework.zip",
            checksum: "bea4268acaaf1300303fb4b7565c50d9165bface578dd7f1c1fcae845db406ba"
        )
    ]
)

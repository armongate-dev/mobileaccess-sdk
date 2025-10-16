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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.1-beta.3/ArmongateMobileAccessSDK-0.0.1-beta.3.xcframework.zip",
            checksum: "ff42c82ebc08a599fd443355d35f31e6ce0e6ce5e7fba7025e152fb8f84c5a11"
        )
    ]
)

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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.1-beta.24/ArmongateMobileAccessSDK-0.0.1-beta.24.xcframework.zip",
            checksum: "75b6cffead2c163e6700cd0e4603c84c91dab52a4f76340264385e962c36a22e"
        )
    ]
)

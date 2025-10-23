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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.2-beta.31/ArmongateMobileAccessSDK-0.0.2-beta.31.xcframework.zip",
            checksum: "45db69fead9888fec7200f65620e8fdc3260b4b198c0edf23b218273e6a2b19b"
        )
    ]
)

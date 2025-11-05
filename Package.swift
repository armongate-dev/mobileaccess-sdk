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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.3-beta.29/ArmongateMobileAccessSDK-0.0.3-beta.29.xcframework.zip",
            checksum: "6b4d1018a4fec38dd9ad372e3f10656671b5b3a495aea55b41eee434f5c43754"
        )
    ]
)

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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.3-beta.31/ArmongateMobileAccessSDK-0.0.3-beta.31.xcframework.zip",
            checksum: "bd2e3346ae34f32e02e3bb7d62b8cc396a832bea1b9739d9a75988156b4e2389"
        )
    ]
)

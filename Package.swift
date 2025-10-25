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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.2-beta.34/ArmongateMobileAccessSDK-0.0.2-beta.34.xcframework.zip",
            checksum: "c149f2eb404969228ab41282d7807f5c1bc83c217e7605105b70a3080298aee9"
        )
    ]
)

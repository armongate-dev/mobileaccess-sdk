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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.1-beta.12/ArmongateMobileAccessSDK-0.0.1-beta.12.xcframework.zip",
            checksum: "15fce2a4eaa1fdb6b837b0cfc3869d552654c5cc6fea6aef44f3d7aa2b01c6fd"
        )
    ]
)

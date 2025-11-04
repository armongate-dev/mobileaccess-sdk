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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.3-beta.19/ArmongateMobileAccessSDK-0.0.3-beta.19.xcframework.zip",
            checksum: "19a28416135ac6c0a316a889c964a00afc775485f7b961a79b16e10dc170abc8"
        )
    ]
)

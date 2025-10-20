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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.2-beta.10/ArmongateMobileAccessSDK-0.0.2-beta.10.xcframework.zip",
            checksum: "48f1d86dda96d9c6c753f337367fc6c6dd7753ebacfc810efba0f7530b872411"
        )
    ]
)

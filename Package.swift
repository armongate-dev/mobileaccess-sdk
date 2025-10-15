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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.2/ArmongateMobileAccessSDK-0.0.2.xcframework.zip",
            checksum: "91d6ca86c5007acfea35cbbc7b29666f57674c860d59a5820948f1ba2c170b1a"
        )
    ]
)

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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.2-beta.29/ArmongateMobileAccessSDK-0.0.2-beta.29.xcframework.zip",
            checksum: "01138e37bfa7d28e285e1afa367bcdbef94aed8c22e2c93743c6af4d8276498b"
        )
    ]
)

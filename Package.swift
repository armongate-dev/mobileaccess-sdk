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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.2-beta.27/ArmongateMobileAccessSDK-0.0.2-beta.27.xcframework.zip",
            checksum: "9405edf6c307b47ac781325c732b0cda6d52495c1c04b20ac1930802640c6df6"
        )
    ]
)

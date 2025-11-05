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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.3-beta.30/ArmongateMobileAccessSDK-0.0.3-beta.30.xcframework.zip",
            checksum: "35bc3b7989110a06250559b0b531e68e8b5068a4c69892ce4ab26105a07a044f"
        )
    ]
)

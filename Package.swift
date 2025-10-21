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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.2-beta.21/ArmongateMobileAccessSDK-0.0.2-beta.21.xcframework.zip",
            checksum: "f78861ad705e1ee9853600b1a87735456cdcb017c4b24e7fe62a94141af8d9d2"
        )
    ]
)

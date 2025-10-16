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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.1-beta.7/ArmongateMobileAccessSDK-0.0.1-beta.7.xcframework.zip",
            checksum: "cbeb8d9822ff4ac111aeff61e2d5e0c1367dfaf8c5d1d63ffc605e65a2a97724"
        )
    ]
)

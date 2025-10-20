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
            checksum: "42883e4d4ec6785dafa7c6575d778dc7cfcefd7c056bb74a018dabad73dc57c9"
        )
    ]
)

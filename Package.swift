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
            checksum: "89c540f241ae37915290335167bd4d31561edcd0a964263a981b09775566a132"
        )
    ]
)

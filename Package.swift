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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.1-beta.10/ArmongateMobileAccessSDK-0.0.1-beta.10.xcframework.zip",
            checksum: "b59817b6919d5f6051dce0b89eae3483ce3013b78ffe50915872ae27f8e90c90"
        )
    ]
)

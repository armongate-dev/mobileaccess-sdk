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
            checksum: "0c4f20e929d231392cf07ba43bc608a2e5474b7a5f45002dc35696d77f14cf8b"
        )
    ]
)

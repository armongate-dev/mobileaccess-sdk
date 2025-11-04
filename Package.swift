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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.3-beta.15/ArmongateMobileAccessSDK-0.0.3-beta.15.xcframework.zip",
            checksum: "ea655bab1ff31e075004c2dfb2884fc70a1611a8f72b5f491124916b0c760e9b"
        )
    ]
)

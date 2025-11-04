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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.3-beta.21/ArmongateMobileAccessSDK-0.0.3-beta.21.xcframework.zip",
            checksum: "9a73227a9608b8818ea0a0db9469d93a9d9e88533acfe5fccad4e89c7fe43e48"
        )
    ]
)

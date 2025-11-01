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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.3-beta.11/ArmongateMobileAccessSDK-0.0.3-beta.11.xcframework.zip",
            checksum: "2dbb3fa4af392cb59af91a4db9a33ea6eda0e55a81839c3a99ae7c8d375b2909"
        )
    ]
)

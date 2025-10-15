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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.3/ArmongateMobileAccessSDK-0.0.3.xcframework.zip",
            checksum: "7833598fe7bc6b2d40b6540c899a6048d3a85e18a5f8ac03a17f357116dcdd0c"
        )
    ]
)

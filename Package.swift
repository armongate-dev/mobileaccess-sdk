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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.3-beta.16/ArmongateMobileAccessSDK-0.0.3-beta.16.xcframework.zip",
            checksum: "c77fa5948f57f4bc99caa1517ddb4162dca643d3537195b2f1db0aee54f443b7"
        )
    ]
)

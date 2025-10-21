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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.2-beta.23/ArmongateMobileAccessSDK-0.0.2-beta.23.xcframework.zip",
            checksum: "52682814d66356edc3f831fa4cc67f1cc5bc31a46974b7c5ba51699a4d6af663"
        )
    ]
)

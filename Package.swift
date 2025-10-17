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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.1-beta.16/ArmongateMobileAccessSDK-0.0.1-beta.16.xcframework.zip",
            checksum: "510eb4e5e9b1140becd7cf8d6b7540556a2368e11850959635fb1cd6827c60bb"
        )
    ]
)

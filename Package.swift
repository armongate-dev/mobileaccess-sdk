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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.2-beta.22/ArmongateMobileAccessSDK-0.0.2-beta.22.xcframework.zip",
            checksum: "1bc9a45c2d640bac8a58183589c33e684089577d2110f2e468c240cdda14aa3a"
        )
    ]
)

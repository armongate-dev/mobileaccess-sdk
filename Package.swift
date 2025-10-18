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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.1-beta.20/ArmongateMobileAccessSDK-0.0.1-beta.20.xcframework.zip",
            checksum: "fc5240f1fe60a6c364d1e2fca29947c960140b676d2ab4d2e1aba4264f0b751c"
        )
    ]
)

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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.1-beta.9/ArmongateMobileAccessSDK-0.0.1-beta.9.xcframework.zip",
            checksum: "3a0de695e0dc7cf7691253fe328fb4b7f3af07bab696b56a1e636d1a3e06cb1a"
        )
    ]
)

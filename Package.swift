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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/v0.0.1/ArmongateMobileAccessSDK-v0.0.1.xcframework.zip",
            checksum: "471f8cbce7be73938270c3e19ec5b34febd6883ee5bcdce8a51e041f0df536a8"
        )
    ]
)

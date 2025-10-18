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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.1-beta.23/ArmongateMobileAccessSDK-0.0.1-beta.23.xcframework.zip",
            checksum: "6f22330e81c5b28ccd2cd6b30af6edea96b6162deacfc6db342600b4f1aedd4c"
        )
    ]
)

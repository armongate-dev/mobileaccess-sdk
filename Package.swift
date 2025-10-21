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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.2-beta.16/ArmongateMobileAccessSDK-0.0.2-beta.16.xcframework.zip",
            checksum: "8fa6357c2283c4efa78bdf7b4412b99269c55f0ddbe8acaccce4870129603283"
        )
    ]
)

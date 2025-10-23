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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.2-beta.30/ArmongateMobileAccessSDK-0.0.2-beta.30.xcframework.zip",
            checksum: "2c80f50af9339ef04724af701c04e13bd47d0ef8ab9482ea58e4934a53470f77"
        )
    ]
)

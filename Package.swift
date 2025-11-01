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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.3-beta.4/ArmongateMobileAccessSDK-0.0.3-beta.4.xcframework.zip",
            checksum: "ae83f54e3dd22b9ba70621c11e90d97402b1c13bdfc515127a51a210412fbfc9"
        )
    ]
)

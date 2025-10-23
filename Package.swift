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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.2-beta.25/ArmongateMobileAccessSDK-0.0.2-beta.25.xcframework.zip",
            checksum: "34ffbdaa10eb1e2c291e1166658dd3c73038a159bba700fde73dada5149662de"
        )
    ]
)

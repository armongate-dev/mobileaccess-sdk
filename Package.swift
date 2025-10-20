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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.1-beta.26/ArmongateMobileAccessSDK-0.0.1-beta.26.xcframework.zip",
            checksum: "b39deaf5486f9af2ef212881b4659e16c5689589354b9204126c5dd341ca71d4"
        )
    ]
)

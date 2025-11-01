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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.3-beta.3/ArmongateMobileAccessSDK-0.0.3-beta.3.xcframework.zip",
            checksum: "1ec1c360a355e27f63ef348016b090c4cadf55aa0bd99b5c144a2510eae6d40a"
        )
    ]
)

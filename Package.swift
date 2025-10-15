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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.2/ArmongateMobileAccessSDK-0.0.2.xcframework.zip",
            checksum: "54513681495be6ac63fc0db778e15b8468386641973bcfe8821ad83b2595b58b"
        )
    ]
)

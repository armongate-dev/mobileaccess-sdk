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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.3-beta.20/ArmongateMobileAccessSDK-0.0.3-beta.20.xcframework.zip",
            checksum: "395d2ca6d1fe539a443b1b03eb65d5a290c7c0bc053129433638818445d44809"
        )
    ]
)

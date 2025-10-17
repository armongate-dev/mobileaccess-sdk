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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.1-beta.15/ArmongateMobileAccessSDK-0.0.1-beta.15.xcframework.zip",
            checksum: "ade5d4179304ea71feec63f982156bd4db83088b88c58b9461fb8efba02ed3ef"
        )
    ]
)

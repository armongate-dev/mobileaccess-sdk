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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.3-beta.9/ArmongateMobileAccessSDK-0.0.3-beta.9.xcframework.zip",
            checksum: "e1e05e09ba5f057ab64dd551a521d76354e82e4aaeb2a0dd628fd73055e3592d"
        )
    ]
)

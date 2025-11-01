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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.3-beta.10/ArmongateMobileAccessSDK-0.0.3-beta.10.xcframework.zip",
            checksum: "4bcb398873e4ef5933f0ed0c1ec7fc75e7a8ae1eec464203f4a9a92e3a9da4ad"
        )
    ]
)

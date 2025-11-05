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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.3-beta.35/ArmongateMobileAccessSDK-0.0.3-beta.35.xcframework.zip",
            checksum: "2dc665ea2712792475ce7f967cd3833a59dda2430c829f1b63ed0d60421cd5ec"
        )
    ]
)

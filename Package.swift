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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.1-beta.18/ArmongateMobileAccessSDK-0.0.1-beta.18.xcframework.zip",
            checksum: "cd66f7b726d3c10e4e8e6c2f1204c542ddc9466aaa93a83665a18368516fec1f"
        )
    ]
)

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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.3-beta.28/ArmongateMobileAccessSDK-0.0.3-beta.28.xcframework.zip",
            checksum: "6533d19a9125ffeaa937db0332ac01a0487ba198cc687b7b5f31841e6f55dc22"
        )
    ]
)

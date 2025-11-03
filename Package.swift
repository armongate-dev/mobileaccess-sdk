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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.3-beta.14/ArmongateMobileAccessSDK-0.0.3-beta.14.xcframework.zip",
            checksum: "27e680e2e88a494b513cc98022098038a6734ce13ac5ebe509ae9dec2944b249"
        )
    ]
)

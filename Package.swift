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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.1-beta.17/ArmongateMobileAccessSDK-0.0.1-beta.17.xcframework.zip",
            checksum: "68310b8b4ef66ed5541ce3dc164021ed99975bad6347b8265ce8a00bf0085f5e"
        )
    ]
)

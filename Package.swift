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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.1-beta.25/ArmongateMobileAccessSDK-0.0.1-beta.25.xcframework.zip",
            checksum: "abedd2bd6dbcf56c57eb60a9c99338672940d31ecdeaed4bbd8c9502c1cb00df"
        )
    ]
)

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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.2-beta.18/ArmongateMobileAccessSDK-0.0.2-beta.18.xcframework.zip",
            checksum: "288b71270bf3223d36e95cdeec6c185badc635e73b0991591f355d491b707b77"
        )
    ]
)

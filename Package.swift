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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.2-beta.24/ArmongateMobileAccessSDK-0.0.2-beta.24.xcframework.zip",
            checksum: "4827e82a16d48bef78cac190032875f1028aaeba2db61bf546e4f562fb613b74"
        )
    ]
)

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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.3-beta.17/ArmongateMobileAccessSDK-0.0.3-beta.17.xcframework.zip",
            checksum: "23ab540434b27d772eb9962f3acb3405b5640c5127be2442e8de4c09746ca9cc"
        )
    ]
)

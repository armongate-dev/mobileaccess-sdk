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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.1-beta.2/ArmongateMobileAccessSDK-0.0.1-beta.2.xcframework.zip",
            checksum: "69fb1bb9e2f966093b0e1ce317dfc9c114cf7494cde1f2083b1b80b77aa704d8"
        )
    ]
)

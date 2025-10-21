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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.2-beta.19/ArmongateMobileAccessSDK-0.0.2-beta.19.xcframework.zip",
            checksum: "83b3672333e3fbb9fe00fc82f0bd2f262769a15cf357bdedbe2006b620604baa"
        )
    ]
)

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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.3-beta.22/ArmongateMobileAccessSDK-0.0.3-beta.22.xcframework.zip",
            checksum: "2d589f02de5148d0dbeb18fba1d6fd589c9c5473f5851c65f53c950a268143cc"
        )
    ]
)

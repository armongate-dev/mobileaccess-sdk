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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.2-beta.33/ArmongateMobileAccessSDK-0.0.2-beta.33.xcframework.zip",
            checksum: "c8424cc9e8596556ca00c3e200784b254eb7e4e639945f04efe5d96f0e0f2738"
        )
    ]
)

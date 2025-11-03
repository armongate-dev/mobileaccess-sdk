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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.3-beta.13/ArmongateMobileAccessSDK-0.0.3-beta.13.xcframework.zip",
            checksum: "241b1ad1b87a024d06eba306aaf1c6abcabe8dd31df7ef908f469c96d1ff4157"
        )
    ]
)

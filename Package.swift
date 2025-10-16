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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.1-beta.11/ArmongateMobileAccessSDK-0.0.1-beta.11.xcframework.zip",
            checksum: "0bae9adae6eda502b4bf731b42ec080dbced39729b815e289e3d110aac1c35b3"
        )
    ]
)

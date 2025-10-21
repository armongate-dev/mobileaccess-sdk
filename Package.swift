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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.2-beta.15/ArmongateMobileAccessSDK-0.0.2-beta.15.xcframework.zip",
            checksum: "57cfc3ec75adde12a8761f71c1d2f41aff5890b84bdc12465742181d26b0ec77"
        )
    ]
)

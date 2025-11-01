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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.3-beta.5/ArmongateMobileAccessSDK-0.0.3-beta.5.xcframework.zip",
            checksum: "4a007fd67e0b9edf23cce9b92cf7e1c0056677ab426fd006c9cfcedfcc8149e8"
        )
    ]
)

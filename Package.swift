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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.2-beta.17/ArmongateMobileAccessSDK-0.0.2-beta.17.xcframework.zip",
            checksum: "981fc272da8328fe0de90123a0de965f1c16f49d9689dfb21cd3591ab89f6ca2"
        )
    ]
)

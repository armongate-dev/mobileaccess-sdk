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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.3-beta.27/ArmongateMobileAccessSDK-0.0.3-beta.27.xcframework.zip",
            checksum: "ef855d15f04be26c28d1fb1936bf5d241538390d4cd38f99ddea20c1d7541927"
        )
    ]
)

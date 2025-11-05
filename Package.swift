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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.3-beta.32/ArmongateMobileAccessSDK-0.0.3-beta.32.xcframework.zip",
            checksum: "763cbdfadc14f88d71c37596463e5b35e563272933f68d641a2b6218410406fe"
        )
    ]
)

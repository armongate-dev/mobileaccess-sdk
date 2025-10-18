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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.1-beta.22/ArmongateMobileAccessSDK-0.0.1-beta.22.xcframework.zip",
            checksum: "72ac1aaf94353b799e05f5e1c47ddacc580681018b603884d694afa7decf3390"
        )
    ]
)

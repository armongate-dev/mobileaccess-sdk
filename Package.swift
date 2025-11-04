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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.3-beta.18/ArmongateMobileAccessSDK-0.0.3-beta.18.xcframework.zip",
            checksum: "6b386d78ba49c4d44e869163ffc64809a50dfc4a0139a597533c2e7986637114"
        )
    ]
)

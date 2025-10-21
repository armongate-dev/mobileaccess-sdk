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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.2-beta.20/ArmongateMobileAccessSDK-0.0.2-beta.20.xcframework.zip",
            checksum: "326e69b606aa45dec4ad8354054fa0cea1b0ad29d00c0dd4e2bda791c56b3448"
        )
    ]
)

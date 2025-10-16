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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.1-beta.5/ArmongateMobileAccessSDK-0.0.1-beta.5.xcframework.zip",
            checksum: "181c9f43a8bba6ebad8feedc65258834514d87f74e1e29f6795e62d9d7488645"
        )
    ]
)

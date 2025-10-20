// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "ArmongateMobileAccessSDK",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "ArmongateMobileAccessSDK", targets: ["ArmongateMobileAccessSDK"]),
    ],
    dependencies: [
        .package(url: "https://github.com/armongate-dev/mobileaccess-core.git", exact: "0.0.2-beta.8")
    ],
    targets: [
        .binaryTarget(
            name: "ArmongateMobileAccessSDK",
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.2-beta.8/ArmongateMobileAccessSDK-0.0.2-beta.8.xcframework.zip",
            checksum: "7f558089377fe797bbfb9c5cb066da7b50959a10e453e2cbc96642ab8261b022"
        )
    ]
)

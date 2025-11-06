// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "ArmongateMobileAccessSDK",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "ArmongateMobileAccessSDK", targets: ["ArmongateMobileAccessSDKWrapper"]),
    ],
    dependencies: [
        .package(url: "https://github.com/armongate-dev/mobileaccess-core.git", exact: "0.0.3-beta.39"),
    ],
    targets: [
        .binaryTarget(
            name: "ArmongateMobileAccessSDK",
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.3-beta.39/ArmongateMobileAccessSDK-0.0.3-beta.39.xcframework.zip",
            checksum: "b61a5542bc8973137dce82f01cc177239ca9ca85ec7e7b29eb6315e6ab703b6b"
        ),
        .target(
            name: "ArmongateMobileAccessSDKWrapper",
            dependencies: [
                "ArmongateMobileAccessSDK",
                .product(name: "VoramCore", package: "mobileaccess-core"),
            ]
        )
    ]
)

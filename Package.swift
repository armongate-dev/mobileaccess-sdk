// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "ArmongateMobileAccessSDK",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "ArmongateMobileAccessSDK", targets: ["ArmongateMobileAccessSDKWrapper"]),
    ],
    dependencies: [
        .package(url: "https://github.com/armongate-dev/mobileaccess-core.git", exact: "0.0.3-beta.42.1"),
    ],
    targets: [
        .binaryTarget(
            name: "ArmongateMobileAccessSDK",
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.3-beta.42.1/ArmongateMobileAccessSDK-0.0.3-beta.42.1.xcframework.zip",
            checksum: "9907d13ba7799af9a26e3decbfdc4c327e1d7fd5a33f60fd854fc1c95247c634"
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

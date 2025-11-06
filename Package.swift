// swift-tools-version: 5.1
import PackageDescription

let package = Package(
    name: "ArmongateMobileAccessSDK",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "ArmongateMobileAccessSDK", targets: ["ArmongateMobileAccessSDKWrapper"]),
    ],
    dependencies: [
        .package(url: "https://github.com/armongate-dev/mobileaccess-core.git", exact: "0.0.3-beta.40.2"),
    ],
    targets: [
        .binaryTarget(
            name: "ArmongateMobileAccessSDK",
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.3-beta.40.2/ArmongateMobileAccessSDK-0.0.3-beta.40.2.xcframework.zip",
            checksum: "7f4c6d69cee2b669912ad95e553fdf5fcae29e315fa0377894bbd567c1e3fd1d"
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

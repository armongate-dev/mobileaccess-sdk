// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "ArmongateMobileAccessSDK",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "ArmongateMobileAccessSDK", targets: ["ArmongateMobileAccessSDKWrapper"]),
    ],
    dependencies: [
        .package(url: "https://github.com/armongate-dev/mobileaccess-core.git", exact: "0.0.3-beta.40"),
    ],
    targets: [
        .binaryTarget(
            name: "ArmongateMobileAccessSDK",
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.3-beta.40/ArmongateMobileAccessSDK-0.0.3-beta.40.xcframework.zip",
            checksum: "989d0ba558261cfbf64ba7f6626143d7a5fdb1e8bc9b9f8bd553841a7cfc8148"
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

// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "ArmongateMobileAccessSDK",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "ArmongateMobileAccessSDK", targets: ["ArmongateMobileAccessSDK"]),
    ],
    dependencies: [
        .package(url: "https://github.com/armongate-dev/mobileaccess-core.git", exact: "0.0.3-beta.37"),
    ],
    targets: [
        .binaryTarget(
            name: "ArmongateMobileAccessSDKFramework",
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.3-beta.37/ArmongateMobileAccessSDK-0.0.3-beta.37.xcframework.zip",
            checksum: "c57a98880e23aadd679945e8b992e4f59d83584a1024f2f5b8af87b3ffa67830"
        ),
        .target(
            name: "ArmongateMobileAccessSDK",
            dependencies: [
                "ArmongateMobileAccessSDKFramework",
                .product(name: "VoramCore", package: "mobileaccess-core"),
            ]
        )
    ]
)

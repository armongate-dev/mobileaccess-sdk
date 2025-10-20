// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "ArmongateMobileAccessSDK",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "ArmongateMobileAccessSDK", targets: ["ArmongateMobileAccessSDK"]),
    ],
    dependencies: [
        .package(url: "https://github.com/armongate-dev/mobileaccess-core.git", exact: "0.0.2-beta.11")
    ],
    targets: [
        .binaryTarget(
            name: "ArmongateMobileAccessSDKBinary",
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.2-beta.11/ArmongateMobileAccessSDK-0.0.2-beta.11.xcframework.zip",
            checksum: "3909849004538fe59bcf350fa89d8272a86aa1250f7048c7bfa885e9abf59394"
        ),
        .target(
            name: "ArmongateMobileAccessSDK",
            dependencies: [
                "ArmongateMobileAccessSDKBinary",
                .product(name: "VoramCore", package: "mobileaccess-core")
            ]
        )
    ]
)

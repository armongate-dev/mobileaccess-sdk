// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "ArmongateMobileAccessSDK",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "ArmongateMobileAccessSDK", targets: ["ArmongateMobileAccessSDKTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/armongate-dev/mobileaccess-core.git", exact: "0.0.2-beta.4")
    ],
    targets: [
        .binaryTarget(
            name: "ArmongateMobileAccessSDK",
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.2-beta.4/ArmongateMobileAccessSDK-0.0.2-beta.4.xcframework.zip",
            checksum: "e65922e7ff9dddfeb8ac52a66023aea060c766fde06d612d33e6c085e33edfc0"
        ),
        .target(
            name: "ArmongateMobileAccessSDKTarget",
            dependencies: [
                "ArmongateMobileAccessSDK",
                .product(name: "VoramCore", package: "mobileaccess-core")
            ],
            path: "Sources/ArmongateMobileAccessSDK"
        )
    ]
)

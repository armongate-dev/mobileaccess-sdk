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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.3-beta.36/ArmongateMobileAccessSDK-0.0.3-beta.36.xcframework.zip",
            checksum: "51ea07705642c328476623b8a9ba1b3022b01c9dfa38d9f2e94090039d9b76ae"
        )
    ]
)

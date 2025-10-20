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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.2-beta.10/ArmongateMobileAccessSDK-0.0.2-beta.10.xcframework.zip",
            checksum: "d62e497b2b4d7376b6ed98f46ce97cd9f0df2175799d9510e0a8270eccdd1167"
        )
    ]
)

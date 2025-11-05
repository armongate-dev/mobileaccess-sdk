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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.3-beta.25/ArmongateMobileAccessSDK-0.0.3-beta.25.xcframework.zip",
            checksum: "e189b7968285062a9a69ccaea84dafbac395999e5913a64e8babc1cd4ba7a049"
        )
    ]
)

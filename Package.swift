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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.1-SNAPSHOT1/ArmongateMobileAccessSDK-0.0.1-SNAPSHOT1.xcframework.zip",
            checksum: "e8e9d00fbb676a092bffa43793484913e3825ac815614d41e2a32a1d6c551349"
        )
    ]
)

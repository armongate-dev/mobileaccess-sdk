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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.1-beta.1/ArmongateMobileAccessSDK-0.0.1-beta.1.xcframework.zip",
            checksum: "b183748cea2454d0a2095c54480782c9c619e2e83fa9b7f046bd47ecaeab7d68"
        )
    ]
)

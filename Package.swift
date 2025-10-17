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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.1-beta.14/ArmongateMobileAccessSDK-0.0.1-beta.14.xcframework.zip",
            checksum: "71041d90e6d0c270324d085597c3766b47884f10035fd0804bc59c89a1292509"
        )
    ]
)

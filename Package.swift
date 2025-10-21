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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.2-beta.14/ArmongateMobileAccessSDK-0.0.2-beta.14.xcframework.zip",
            checksum: "fc211328f1d1c0c7719e519706d02f72ebc19b0508e3e018a7528f074ea81dc7"
        )
    ]
)

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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.1-beta.4/ArmongateMobileAccessSDK-0.0.1-beta.4.xcframework.zip",
            checksum: "d5f02f02d0ecdd2edf878c7f19ea68e1d181d228ab916150c398e93707f59ac6"
        )
    ]
)

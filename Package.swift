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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.3-beta.23/ArmongateMobileAccessSDK-0.0.3-beta.23.xcframework.zip",
            checksum: "0779f0b54dbeaf464d516e6a5042c5f7acda58661e94106566c597193c09d457"
        )
    ]
)

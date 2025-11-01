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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.3-beta.1/ArmongateMobileAccessSDK-0.0.3-beta.1.xcframework.zip",
            checksum: "82e00e060b022944891641ce1243c19b0120d61ae8e09b18092dc0b3f74eed93"
        )
    ]
)

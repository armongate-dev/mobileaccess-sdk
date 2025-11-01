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
            url: "https://github.com/armongate-dev/mobileaccess-sdk/releases/download/0.0.3-beta.6/ArmongateMobileAccessSDK-0.0.3-beta.6.xcframework.zip",
            checksum: "07e751862d5867a18fe6a9f233bd8153eb03f773389b7cf5fa4af3488efed2a6"
        )
    ]
)

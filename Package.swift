// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "ArmongateMobileAccessSDK",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "ArmongateMobileAccessSDK",
            targets: ["ArmongateMobileAccessSDK"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "ArmongateMobileAccessSDK",
            url: "https://pkgs.dev.azure.com/armon/armongate-distribution/_apis/packaging/feeds/armongate-sdk-feed/universal/packages/armongate-mobileaccess-sdk/versions/0.0.1/content",
            checksum: "c5dcc0ff1df616e9ea76dfac4b182c279b87eedf6f05a1448c0177eaf69887ee"
        )
    ]
)

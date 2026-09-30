// swift-tools-version:5.7
import PackageDescription
let package = Package(
    name: "ZendeskSDKStorage",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(
            name: "ZendeskSDKStorage",
            targets: [
                "ZendeskSDKStorageTargets"
            ]
        )
    ],
    dependencies: [
        .package(
            name: "ZendeskSDKLogger",
            url: "https://github.com/zendesk/sdk_logger_ios",
            from: "0.12.0"
        )
    ],
    targets: [
        .binaryTarget(
            name: "ZendeskSDKStorage",
            path: "ZendeskSDKStorage.xcframework"
        ),
        .target(
            name: "ZendeskSDKStorageTargets",
            dependencies: [
                .target(name: "ZendeskSDKStorage"),
                .product(name: "ZendeskSDKLogger", package: "ZendeskSDKLogger")
            ],
            path: "Sources"
        )
    ]
)

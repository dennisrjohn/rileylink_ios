// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "Shared",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v10),
    ],
    products: [
        .library(
            name: "MinimedKit",
            targets: ["Shared"]),
        .library(
            name: "RileyLinkKit",
            targets: ["Shared"]),
        .library(
            name: "NightscoutUploadKit",
            targets: ["Shared"]),
        .library(
            name: "Crypto",
            targets: ["Shared"]),
        .library(
            name: "RileyLinkBLEKit",
            targets: ["Shared"]),
        .library(
            name: "RileyLinkKitUI",
            targets: ["Shared"]),
        .library(
            name: "MinimedKitUI",
            targets: ["Shared"]),
        .library(
            name: "OmniKit",
            targets: ["Shared"]),
        .library(
            name: "OmniKitUI",
            targets: ["Shared"]),
        .library(
            name: "OmniKitPlugin",
            targets: ["Shared"]),
        .library(
            name: "MinimedKitPlugin",
            targets: ["Shared"]),
    ],
    dependencies: [
        .package(
                    url: "https://github.com/dennisrjohn/LoopKit.git",
                    .branch("nudge")
                ),
        .package(
                    url: "https://github.com/maxkonovalov/MKRingProgressView.git",
                    from: "2.2.3"
                )
    ],
    targets: [
        .target(
            name: "Shared",
            dependencies: ["LoopKit", "MKRingProgressView"],
            path: "RileyLink")
    ]
)

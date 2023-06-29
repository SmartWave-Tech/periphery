// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "Periphery",
    platforms: [.iOS(.v12), .macOS(.v11), .tvOS(.v12), .watchOS(.v8)],
    products: [
        .library(
            name: "Periphery",
            targets: ["PeripheryTarget", "_PeripheryStub"]
        )
    ],
    dependencies: [],
    targets: [
        .target(
            name: "_PeripheryStub"
        ),
        .binaryTarget(
            name: "PeripheryTarget",
            url: "https://github.com/SmartWave-Tech/periphery/releases/download/2.14.1/Periphery.artifactbundle.zip",
            checksum: "880c9743e44a00808ecdf0ef8975a4c130a404a29158722390479233a96ea29e"
        )
    ])


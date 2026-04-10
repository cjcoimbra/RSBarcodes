// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "RSBarcodes",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "RSBarcodes",
            targets: ["RSBarcodes"]
        )
    ],
    targets: [
        .target(
            name: "RSBarcodes",
            path: "RSBarcodes",
            exclude: [
                "RSBarcodes-Info.plist",
                "RSBarcodes-Prefix.pch",
                "include",
                "en.lproj"
            ],
            publicHeadersPath: "include",
            linkerSettings: [
                .linkedFramework("AVFoundation"),
                .linkedFramework("CoreGraphics"),
                .linkedFramework("CoreImage"),
                .linkedFramework("UIKit")
            ]
        )
    ]
)

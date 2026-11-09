// swift-tools-version: 5.9
//
//  Package.swift
//  RSBarcodes
//
//  Created by Christian Coimbra.

import PackageDescription

let package = Package(
    name: "RSBarcodes",
    platforms: [
        .iOS(.v16)
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
                "en.lproj",
                "RSBarcodes-Info.plist",
                "RSBarcodes-Prefix.pch"
            ],
            publicHeadersPath: "include",
            linkerSettings: [
                .linkedFramework("AVFoundation"),
                .linkedFramework("CoreImage")
            ]
        )
    ]
)

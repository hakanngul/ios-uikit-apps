// swift-tools-version: 6.0

// WARNING:
// This file is automatically generated.
// Do not edit it by hand because the contents will be replaced.

import PackageDescription
import AppleProductTypes

let package = Package(
    name: "composition",
    platforms: [
        .iOS("16.0")
    ],
    products: [
        .iOSApplication(
            name: "composition",
            targets: ["AppModule"],
            bundleIdentifier: "com.nextus.composition",
            teamIdentifier: "5C3SB5DK2F",
            displayVersion: "1.0",
            bundleVersion: "1",
            appIcon: .placeholder(icon: .weights),
            accentColor: .presetColor(.pink),
            supportedDeviceFamilies: [
                .pad,
                .phone
            ],
            supportedInterfaceOrientations: [
                .portrait,
                .landscapeRight,
                .landscapeLeft,
                .portraitUpsideDown(.when(deviceFamilies: [.pad]))
            ]
        )
    ],
    targets: [
        .executableTarget(
            name: "AppModule",
            path: "."
        )
    ],
    swiftLanguageVersions: [.v6]
)

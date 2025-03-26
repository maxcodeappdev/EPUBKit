// swift-tools-version:5.4

import PackageDescription

let package = Package(
    name: "EPUBKit",
    
    platforms: [
        .macOS(.v10_10),
        .iOS(.v9),
        .tvOS(.v9)
    ],
    
    products: [
        .library(name: "EPUBKit", targets: ["EPUBKit"]),
    ],
    
    dependencies: [
        .package(
            url: "https://github.com/tadija/AEXML.git",
            from: "4.7.0"
        ),
        .package(
            url: "https://github.com/marmelroy/Zip.git",
            from: "2.1.1"
        )
    ],
    
    targets: [
        .target(
            name: "EPUBKit",
            dependencies: ["AEXML", "Zip"]
        ),
        .testTarget(
            name: "EPUBKitTests",
            dependencies: ["EPUBKit"],
            resources: [.copy("Resources")]
        )
    ]
)

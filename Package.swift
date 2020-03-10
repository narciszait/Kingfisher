// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "Kingfisher",
    platforms: [.iOS(.v13), .macOS(.v10_15), .tvOS(.v13), .watchOS(.v6)],
    products: [
        .library(name: "Kingfisher", targets: ["Kingfisher"]),
        .library(name: "KingfisherSwiftUI", targets: ["KingfisherSwiftUI"])
    ],
    targets: [
        .target(
            name: "Kingfisher",
            path: "Sources",
            exclude: ["SwiftUI"]
        ),
        .target(
            name: "KingfisherSwiftUI",
            dependencies: ["Kingfisher"],
            path: "Sources",
            sources: ["SwiftUI"]
        )
    ]
)

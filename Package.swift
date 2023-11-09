// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "blutility",
    platforms: [.iOS(.v14), .macOS(.v12)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "blutility",
            targets: ["blutility"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "blutility"
        ),
        .testTarget(
            name: "blutilityTests",
            dependencies: ["blutility"]
        )
    ]
)

package.dependencies.append(
  .package(url: "https://github.com/apple/swift-docc-plugin", from: "1.0.0")
)

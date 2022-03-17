// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DocC",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "DocC",
            targets: ["DocC"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/apple/swift-docc-plugin", from: "1.0.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "DocC",
            dependencies: []),
        .testTarget(
            name: "DocCTests",
            dependencies: ["DocC"]),
    ]
)

/*
sudo swift package --allow-writing-to-directory docs/ \
    generate-documentation --target DocC \
    --disable-indexing \
    --transform-for-static-hosting \
    --hosting-base-path DocC \
    --output-path docs/
    */
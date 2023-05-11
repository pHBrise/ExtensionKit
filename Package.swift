// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ExtensionKit",
    defaultLocalization: "en",
    platforms: [.iOS(.v14)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
//        .executable(name: "Resources", targets: ["Resources"]),
        .library(
            name: "ExtensionKit",
            targets: ["ExtensionKit"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "ExtensionKit",
            dependencies: [],
            resources: [
                .copy("Fonts"),
                .copy("Localize"),
                .copy("Assets"),
                .copy("Colors"),
                .copy("Icons"),
                .copy("NavigationBar"),
                .copy("TabBarItem"),
            ]),
        .testTarget(
            name: "ExtensionKitTests",
            dependencies: ["ExtensionKit"]),
    ]
)

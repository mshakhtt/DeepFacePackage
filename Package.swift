// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DeepFacePackage",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "DeepFacePackage",
            targets: ["DeepFacePackage", "opencv2"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        
        .package(url: "https://github.com/kewlbear/Open3D-iOS", branch: "292cadc677494ed0c1b6c500996cd25525e5b46d"),
        .package(url: "https://github.com/pvieito/PythonKit.git", branch: "master")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "DeepFacePackage",
            dependencies: ["Open3D-iOS", "PythonKit"]),
        .binaryTarget(
            name: "opencv2",
            path: "opencv2.xcframework"
        ),
        .testTarget(
            name: "DeepFacePackageTests",
            dependencies: ["DeepFacePackage"]),
    ]
)

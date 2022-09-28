// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription


let package = Package(
    name: "socketSrver",
//    dependencies: [
//        .package(url: "https://github.com/Kitura/BlueSocket.git", from:"1.0.8"),
//    ],
    dependencies: [
            .package(path: "Libs/BlueSocket")
        ],
    targets: [
        .executableTarget(
            name: "socketSrver",
            dependencies: [.product(name: "Socket", package: "BlueSocket")],
                        resources: [.process("Resources")]
        ),
        .testTarget(
            name: "socketSrverTests",
            dependencies: ["socketSrver"]),
    ]
)

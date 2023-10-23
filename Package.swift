// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Math_Package",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Math_Package",
            targets: ["Math_Package"]),
    ],
    
//    dependencies: [
//        .package(url: "https://cocoapods.org/pods/Greet_A",
//                 from: "0.0.2")
//    ],
   
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "Math_Package",
            dependencies: [],
//            dependencies: [
//                .target(name: "MathFunctions"),
////                .product(name: "Greet_A")
////                .product(name: "Greet_A", package: "Greet_A")
//            ],
        
            linkerSettings: [
                   .linkedFramework("Greet_A")
            ]),
        
            
            .binaryTarget(
                name: "MathFunctions",
                path: "./Sources/MathFunctions.xcframework"
            )
    ]
)

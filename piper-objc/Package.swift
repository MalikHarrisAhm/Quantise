// swift-tools-version: 5.8

import PackageDescription

let package = Package(
    name: "piper-objc",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "piper-objc",
            targets: [
                "piper-objc"
            ])
    ],
    dependencies: [
        .package(url: "https://github.com/MalikHarrisAhm/piper-spm",
                 .upToNextMajor(from: "2023.11.14"))
    ],
    targets: [
        .target(name: "piper-objc",
                dependencies: [
                    .product(name: "piper", package: "piper-spm")
                ],
                path: "Sources/piper-objc",
                cxxSettings: [
                    .headerSearchPath("utils")
                ],
                linkerSettings: [
                    .linkedFramework("NaturalLanguage")
                ]
               )
    ],
    cxxLanguageStandard: .cxx17
)

import ProjectDescription

let project = Project(
    name: "MacrolatoriOSApp",
    targets: [
        
        .target(
            name: "MacrolatorApp",
            destinations: [.iPhone],
            product: .app,
            bundleId: "com.macrolator.app",
            infoPlist: .default,
            sources: ["Sources/MacrolatorApp/**"],
            dependencies: [
                .project(target: "MacrolatoriOS", path: "../Macrolator"),
                .project(target: "MacrolatorCore", path: "../Macrolator")
            ]
        ),
        
        .target(
            name: "MacrolatorAppTests",
            destinations: [.iPhone],
            product: .unitTests,
            bundleId: "com.macrolator.app.tests",
            sources: ["Sources/MacrolatorAppTests/**"],
            dependencies: [
                .target(name: "MacrolatorApp")
            ]
        )
    ]
)

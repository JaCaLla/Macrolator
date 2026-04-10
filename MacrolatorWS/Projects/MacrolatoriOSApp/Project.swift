import ProjectDescription
import ProjectDescriptionHelpers

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
            scripts: TargetScript.linting,
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
            scripts: TargetScript.linting,
            dependencies: [
                .target(name: "MacrolatorApp")
            ]
        )
    ]
)

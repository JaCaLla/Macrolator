import Foundation
import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: "Macrolator",
    targets: [
        // MARK: - Core

        .target(
            name: "MacrolatorCore",
            destinations: [.iPhone],
            product: .framework,
            bundleId: "com.macrolator.core",
            sources: ["Sources/MacrolatorCore/**"],
            scripts: TargetScript.linting,
            dependencies: []
        ),

        .target(
            name: "MacrolatorCoreTests",
            destinations: [.iPhone],
            product: .unitTests,
            bundleId: "com.macrolator.core.tests",
            sources: ["Sources/Tests/MacrolatorCoreTests/**"],
            scripts: TargetScript.linting,
            dependencies: [
                .target(name: "MacrolatorCore"),
            ]
        ),

        // MARK: - iOS Layer

        .target(
            name: "MacrolatoriOS",
            destinations: [.iPhone],
            product: .framework,
            bundleId: "com.macrolator.ios",
            sources: ["Sources/MacrolatoriOS/**"],
            scripts: TargetScript.linting,
            dependencies: [
                .target(name: "MacrolatorCore"),
            ]
        ),

        .target(
            name: "MacrolatoriOSTests",
            destinations: [.iPhone],
            product: .unitTests,
            bundleId: "com.macrolator.ios.tests",
            sources: ["Sources/Tests/MacrolatoriOSTests/**"],
            scripts: TargetScript.linting,
            dependencies: [
                .target(name: "MacrolatoriOS"),
            ]
        ),
    ],

    schemes: [
        .scheme(
            name: "CI",
            shared: true,
            buildAction: .buildAction(
                targets: [
                    .target("MacrolatorCore"),
                    .target("MacrolatorCoreTests"),
                    .target("MacrolatoriOSTests"),
                    .target("MacrolatorAppTests"),
                ]
            ),
            testAction: .targets(
                [
                    .testableTarget(target: "MacrolatorCoreTests"),
                    .testableTarget(target: "MacrolatoriOSTests"),
                    .testableTarget(target: "MacrolatorAppTests"),

                ],
                configuration: .debug,
                options: .options(
                    coverage: true
                )
            )
        ),
    ]
)

// Tuist/ProjectDescriptionHelpers/TargetScript+Linting.swift
import ProjectDescription

public extension TargetScript {
    
    static var swiftLint: TargetScript {
        .pre(
            script: """
            echo "<<<<<<<<<<<<<< BEGIN - SWIFTLINT <<<<<<<<<<<<<<<<<<<<<"
            export PATH="$PATH:/opt/homebrew/bin:$HOME/.mint/bin"
            if which mint > /dev/null; then
                mint run swiftlint swiftlint
            else
                echo "warning: Mint not installed. Run: brew install mint"
            fi
            echo "<<<<<<<<<<<<<< END - SWIFTLINT <<<<<<<<<<<<<<<<<<<<<"
            """,
            name: "SwiftLint",
            basedOnDependencyAnalysis: false
        )
    }
    
    static var swiftFormat: TargetScript {
        .pre(
            script: """
            echo "<<<<<<<<<<<<<< BEGIN - SWIFTFORMAT <<<<<<<<<<<<<<<<<<<<<"
            export PATH="$PATH:/opt/homebrew/bin:$HOME/.mint/bin"
            if which mint > /dev/null; then
                mint run swiftformat swiftformat .
            else
                echo "warning: Mint not installed. Run: brew install mint"
            fi
            echo "<<<<<<<<<<<<<< END - SWIFTFORMAT <<<<<<<<<<<<<<<<<<<<<"
            """,
            name: "SwiftFormat",
            basedOnDependencyAnalysis: false
        )
    }
    
    static var linting: [TargetScript] {
        [.swiftFormat, .swiftLint]
    }
}

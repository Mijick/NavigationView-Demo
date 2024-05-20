//
//  NavigationView_Main.swift of NavigationView Demo
//
//  Created by Tomasz Kurylik
//    - Twitter: https://twitter.com/tkurylik
//    - Mail: tomasz.kurylik@mijick.com
//
//  Copyright ©2023 Mijick. Licensed under MIT License.


import SwiftUI
import MijickNavigationView

@main struct NavigationView_Main: App {
    var body: some Scene { WindowGroup {
        WalkthroughView()
            .implementNavigationView(config: navigationConfig)
            .preferredColorScheme(.light)
    }}
}
private extension NavigationView_Main {
    var navigationConfig: NavigationGlobalConfig {
        let config = NavigationGlobalConfig()
        config.backgroundColour = .backgroundPrimary
        return config
    }
}

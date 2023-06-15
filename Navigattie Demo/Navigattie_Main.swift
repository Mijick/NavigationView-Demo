//
//  Navigattie_Main.swift of Navigattie Demo
//
//  Created by Tomasz Kurylik
//    - Twitter: https://twitter.com/tkurylik
//    - Mail: tomasz.kurylik@mijick.com
//
//  Copyright ©2023 Mijick. Licensed under MIT License.


import SwiftUI
import Navigattie

@main struct Navigattie_Main: App {
    var body: some Scene { WindowGroup {
        WalkthroughView()
            .implementNavigationView(config: navigationConfig)
            .preferredColorScheme(.light)
    }}
}
private extension Navigattie_Main {
    var navigationConfig: NavigationGlobalConfig {
        let config = NavigationGlobalConfig()
        config.backgroundColour = .backgroundPrimary
        return config
    }
}

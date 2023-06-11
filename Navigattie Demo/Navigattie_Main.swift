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
    var body: some Scene {
        WindowGroup { WalkthroughView().implementNavigationView(config: navigationConfig) }
    }
}
private extension Navigattie_Main {
    var navigationConfig: NavigationConfig {
        let config = NavigationConfig()
        config.backgroundColour = .clear
        return config
    }
}

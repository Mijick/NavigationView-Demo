//
//  UIScreen++.swift of Navigattie Demo
//
//  Created by Tomasz Kurylik
//    - Twitter: https://twitter.com/tkurylik
//    - Mail: tomasz.kurylik@mijick.com
//
//  Copyright ©2023 Mijick. Licensed under MIT License.


import SwiftUI

extension UIScreen {
    static let width: CGFloat = UIScreen.main.bounds.size.width
    static let safeArea: UIEdgeInsets = {
        UIApplication.shared.connectedScenes
            .filter({$0.activationState == .foregroundActive})
            .map({$0 as? UIWindowScene})
            .compactMap({$0})
            .first?.windows
            .filter({$0.isKeyWindow})
            .first?
            .safeAreaInsets ?? .zero
    }()
    static let margin: CGFloat = 28
}

// MARK: - Numeric Helpers
extension CGFloat {
    static var margin: CGFloat { UIScreen.margin }
}

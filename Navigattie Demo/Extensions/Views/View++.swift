//
//  View++.swift of Navigattie Demo
//
//  Created by Tomasz Kurylik
//    - Twitter: https://twitter.com/tkurylik
//    - Mail: tomasz.kurylik@mijick.com
//
//  Copyright ©2023 Mijick. Licensed under MIT License.


import SwiftUI

// MARK: - Alignments
extension View {
    func alignVertically(_ edge: VerticalAlignment, _ value: CGFloat = 0) -> some View {
        VStack(spacing: 0) {
            Spacer.height(edge == .top ? value : nil)
            self
            Spacer.height(edge == .bottom ? value : nil)
        }
    }
    func alignHorizontally(_ alignment: HorizontalAlignment, _ value: CGFloat = 0) -> some View {
        HStack(spacing: 0) {
            Spacer.width(alignment == .leading ? value : nil)
            self
            Spacer.width(alignment == .trailing ? value : nil)
        }
    }
}

// MARK: - Modifiers
extension View {
    @ViewBuilder func active(if condition: Bool) -> some View {
        if condition { self }
    }
}

// MARK: - Helpers
extension View {
    func frame(_ size: CGFloat) -> some View { frame(width: size, height: size, alignment: .center) }
}

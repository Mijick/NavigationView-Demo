//
//  StandardButton.swift of Navigattie Demo
//
//  Created by Tomasz Kurylik
//    - Twitter: https://twitter.com/tkurylik
//    - Mail: tomasz.kurylik@mijick.com
//
//  Copyright ©2023 Mijick. Licensed under MIT License.


import SwiftUI

struct StandardButton: View {
    let text: String
    let action: () -> ()

    var body: some View { Button(action: action, label: {}).buttonStyle(Style(text: text)) }
}

// MARK: - Style Customisation
fileprivate struct Style: ButtonStyle {
    let text: String

    func makeBody(configuration: Configuration) -> some View {
        Text(text)
            .font(.bold(15))
            .foregroundColor(.onAccent)
            .frame(height: 48)
            .frame(maxWidth: .infinity)
            .background(Color.accentPrimary)
            .cornerRadius(8)
            .scaleEffect(configuration.isPressed ? scaleWhenPressed : 1)
            .animation(animation, value: configuration.isPressed)
    }
}
private extension Style {
    var scaleWhenPressed: CGFloat { 0.97 }
    var animation: Animation { .easeInOut(duration: 0.2) }
}

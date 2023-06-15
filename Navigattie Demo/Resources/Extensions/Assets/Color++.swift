//
//  Color++.swift of Navigattie Demo
//
//  Created by Tomasz Kurylik
//    - Twitter: https://twitter.com/tkurylik
//    - Mail: tomasz.kurylik@mijick.com
//
//  Copyright ©2023 Mijick. Licensed under MIT License.


import SwiftUI

extension Color {
    static let accentPrimary: Color = .init(hex: 0x388091)
    static let accentSecondary: Color = .init(hex: 0xE4645E)

    static let backgroundPrimary: Color = .init(hex: 0xFFFFFF)
    static let darkBackground: Color = .init(hex: 0x111111)

    static let onBackgroundPrimary: Color = .init(hex: 0x292D32)
    static let onBackgroundSecondary: Color = .init(hex: 0x555B62)
    static let onBackgroundTertiary: Color = .init(hex: 0xF1F1F1)

    static let onDarkBackgroundPrimary: Color = .init(hex: 0xFBFBFB)
    static let onDarkBackgroundSecondary: Color = .init(hex: 0x979797)

    static let onAccent: Color = .white
}

// MARK: - Initialisation with HEX value
fileprivate extension Color {
    init(hex: UInt) { self.init(.sRGB, red: Double((hex >> 16) & 0xff) / 255, green: Double((hex >> 08) & 0xff) / 255, blue: Double((hex >> 00) & 0xff) / 255, opacity: 1) }
}

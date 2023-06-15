//
//  Font++.swift of Navigattie Demo
//
//  Created by Tomasz Kurylik
//    - Twitter: https://twitter.com/tkurylik
//    - Mail: tomasz.kurylik@mijick.com
//
//  Copyright ©2023 Mijick. Licensed under MIT License.


import SwiftUI

extension Font {
    static func regular(_ size: CGFloat) -> Font { .custom("Metropolis-Regular", size: size) }
    static func medium(_ size: CGFloat) -> Font { .custom("Metropolis-Medium", size: size) }
    static func semiBold(_ size: CGFloat) -> Font { .custom("Metropolis-SemiBold", size: size) }
    static func bold(_ size: CGFloat) -> Font { .custom("Metropolis-Bold", size: size) }
    static func extraBold(_ size: CGFloat) -> Font { .custom("Metropolis-ExtraBold", size: size) }
}

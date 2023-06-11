//
//  Separator.swift of Navigattie Demo
//
//  Created by Tomasz Kurylik
//    - Twitter: https://twitter.com/tkurylik
//    - Mail: tomasz.kurylik@mijick.com
//
//  Copyright ©2023 Mijick. Licensed under MIT License.


import SwiftUI

struct Separator: View {
    var body: some View {
        Rectangle()
            .fill(Color.onBackgroundPrimary.opacity(0.06))
            .frame(maxWidth: .infinity)
            .frame(height: 1)
    }
}

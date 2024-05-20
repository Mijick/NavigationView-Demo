//
//  DiscountItem.swift of NavigationView Demo
//
//  Created by Tomasz Kurylik
//    - Twitter: https://twitter.com/tkurylik
//    - Mail: tomasz.kurylik@mijick.com
//
//  Copyright ©2023 Mijick. Licensed under MIT License.


import SwiftUI

struct DiscountItem: View {
    var body: some View {
        HStack(spacing: 20) {
            createIllustration()
            createText()
            Spacer()
        }
        .padding(.vertical, 4)
        .padding(.horizontal, 12)
        .frame(maxWidth: .infinity)
        .overlay(createBackground())
    }
}

private extension DiscountItem {
    func createIllustration() -> some View {
        Image("illustration-discount-item-1")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(72)
    }
    func createText() -> some View {
        Text("Buy two items and pay \(5.0.formatted(.currency(code: "GBP"))) less")
            .font(.regular(14))
            .foregroundColor(.onBackgroundPrimary)
            .multilineTextAlignment(.leading)
    }
    func createBackground() -> some View {
        RoundedRectangle(cornerRadius: 9).stroke(Color.accentPrimary, lineWidth: 2)
    }
}

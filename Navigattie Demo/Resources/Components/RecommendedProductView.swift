//
//  RecommendedProductView.swift of Navigattie Demo
//
//  Created by Tomasz Kurylik
//    - Twitter: https://twitter.com/tkurylik
//    - Mail: tomasz.kurylik@mijick.com
//
//  Copyright ©2023 Mijick. Licensed under MIT License.


import SwiftUI

struct RecommendedProductView: View {
    var body: some View {
        createContent()
            .padding(.vertical, 16)
            .padding(.horizontal, 22)
            .frame(maxWidth: .infinity)
            .background(Color.accentPrimary.opacity(0.12))
            .cornerRadius(12)
            .overlay(createIllustration())
    }
}

private extension RecommendedProductView {
    func createContent() -> some View {
        VStack(alignment: .leading, spacing: 0) {
            createTitleText()
            Spacer.height(10)
            createDescriptionText()
            Spacer.height(6)
            createSeeMoreButton()
        }
        .padding(.trailing, 48)
    }
    func createIllustration() -> some View {
        Image("mc-thumbs-up")
            .resizable()
            .frame(48)
            .rotationEffect(.degrees(-15))
            .alignHorizontally(.trailing, 16)
    }
}

private extension RecommendedProductView {
    func createTitleText() -> some View {
        Text("We recommend")
            .font(.bold(15))
            .foregroundColor(.onBackgroundPrimary)
    }
    func createDescriptionText() -> some View {
        Text("Deserunt id ex mollit incididunt. Esse do ea esse anim.")
            .font(.regular(14))
            .foregroundColor(.onBackgroundSecondary)
            .multilineTextAlignment(.leading)
            .lineSpacing(3)
    }
    func createSeeMoreButton() -> some View {
        Text("See more")
            .font(.bold(14))
            .foregroundColor(.accentPrimary)
            .underline()
    }
}

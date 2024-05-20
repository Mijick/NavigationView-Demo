//
//  ProductView.swift of NavigationView Demo
//
//  Created by Tomasz Kurylik
//    - Twitter: https://twitter.com/tkurylik
//    - Mail: tomasz.kurylik@mijick.com
//
//  Copyright ©2023 Mijick. Licensed under MIT License.


import SwiftUI
import MijickNavigationView

struct ProductView: NavigatableView {
    let product: MockData.SaleCard


    func configure(view: NavigationConfig) -> NavigationConfig { view.ignoresSafeArea(.top) }
    var body: some View {
        VStack(spacing: 0) {
            createTopView()
            createScrollableView()
            createBottomView()
        }
    }
}

private extension ProductView {
    func createTopView() -> some View {
        ProductTopView(product: product)
    }
    func createScrollableView() -> some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading, spacing: 0) {
                createLabel()
                Spacer.height(12)
                createTitleText()
                Spacer.height(8)
                createDetailsView()
                Spacer.height(24)
                createDescription()
                Spacer.height(24)
                createRecommendedView()
            }
            .padding(.top, 4)
            .padding(.bottom, 12)
            .padding(.horizontal, .margin)
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
    func createBottomView() -> some View {
        ProductBottomBar(product: product).padding(.horizontal, .margin)
    }
}

private extension ProductView {
    func createLabel() -> some View {
        Text("Bestseller")
            .font(.medium(13))
            .foregroundColor(.accentPrimary)
            .padding(.vertical, 4)
            .padding(.horizontal, 8)
            .background(Color.accentPrimary.opacity(0.2))
            .cornerRadius(4)
    }
    func createTitleText() -> some View {
        Text(product.title)
            .font(.bold(27))
            .foregroundColor(.onBackgroundPrimary)
    }
    func createDetailsView() -> some View {
        DetailsProductView(product: product)
    }
    func createDescription() -> some View {
        Text(product.description)
            .font(.regular(15.5))
            .foregroundColor(.onBackgroundSecondary)
            .multilineTextAlignment(.leading)
            .lineSpacing(5)
    }
    func createRecommendedView() -> some View {
        RecommendedProductView()
    }
}

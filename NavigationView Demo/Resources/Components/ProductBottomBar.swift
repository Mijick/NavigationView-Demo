//
//  ProductBottomBar.swift of NavigationView Demo
//
//  Created by Tomasz Kurylik
//    - Twitter: https://twitter.com/tkurylik
//    - Mail: tomasz.kurylik@mijick.com
//
//  Copyright ©2023 Mijick. Licensed under MIT License.


import SwiftUI

struct ProductBottomBar: View {
    let product: MockData.SaleCard


    var body: some View {
        VStack(spacing: 0) {
            createSeparator()
            Spacer.height(12)
            createTopView()
            Spacer.height(8)
            createBuyNowButton()
            Spacer.height(8)
        }
    }
}

private extension ProductBottomBar {
    func createSeparator() -> some View {
        Separator()
    }
    func createTopView() -> some View {
        HStack(spacing: 8) {
            createPriceText()
            createSeparatorText()
            createSeeLicenseOptionsText()
            Spacer()
        }
    }
    func createBuyNowButton() -> some View {
        StandardButton(text: "Buy Now", action: onBuyNowButtonTap)
    }
}

private extension ProductBottomBar {
    func createPriceText() -> some View {
        Text(product.price.formatted(.currency(code: "GBP")))
            .font(.bold(23))
            .foregroundColor(.onBackgroundPrimary)
    }
    func createSeparatorText() -> some View {
        Text("-")
            .font(.bold(22))
            .foregroundColor(.onBackgroundPrimary)
    }
    func createSeeLicenseOptionsText() -> some View {
        Text("See license options")
            .font(.regular(15))
            .foregroundColor(.onBackgroundSecondary)
            .underline()
    }
}

private extension ProductBottomBar {
    func onBuyNowButtonTap() {
        CartView().push(with: .horizontalSlide)
    }
}

//
//  SaleCardItem.swift of NavigationView Demo
//
//  Created by Tomasz Kurylik
//    - Twitter: https://twitter.com/tkurylik
//    - Mail: tomasz.kurylik@mijick.com
//
//  Copyright ©2023 Mijick. Licensed under MIT License.


import SwiftUI

struct SaleCardItem: View {
    let data: MockData.SaleCard


    var body: some View {
        Button(action: onItemTap) {
            VStack(alignment: .leading, spacing: 8) {
                createImage()
                createBottomView()
            }
            .frame(maxWidth: .infinity)
        }
    }
}

private extension SaleCardItem {
    func createImage() -> some View {
        Image(data.image)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .cornerRadius(11)
    }
    func createBottomView() -> some View {
        VStack(alignment: .leading, spacing: 4) {
            createBottomTopView()
            createAuthorText()
        }
    }
}

private extension SaleCardItem {
    func createBottomTopView() -> some View {
        HStack(spacing: 0) {
            createTitleText()
            Spacer()
            createPriceText()
        }
    }
    func createAuthorText() -> some View {
        Text(data.author)
            .font(.regular(12))
            .foregroundColor(.onBackgroundSecondary)
            .lineLimit(1)
            .fixedSize(horizontal: false, vertical: true)
    }
}

private extension SaleCardItem {
    func createTitleText() -> some View {
        Text(data.title)
            .font(.semiBold(13))
            .foregroundColor(.onBackgroundPrimary)
            .lineLimit(1)
            .fixedSize(horizontal: false, vertical: true)
    }
    func createPriceText() -> some View {
        Text(data.price, format: .currency(code: "GBP"))
            .font(.semiBold(13))
            .foregroundColor(.accentPrimary)
            .lineLimit(1)
            .fixedSize(horizontal: false, vertical: true)
    }
}

private extension SaleCardItem {
    func onItemTap() {
        ProductView(product: data).push(with: .scale)
    }
}

//
//  CartItem.swift of NavigationView Demo
//
//  Created by Tomasz Kurylik
//    - Twitter: https://twitter.com/tkurylik
//    - Mail: tomasz.kurylik@mijick.com
//
//  Copyright ©2023 Mijick. Licensed under MIT License.


import SwiftUI

struct CartItem: View {
    let item: MockData.CartObject


    var body: some View {
        HStack(spacing: 24) {
            createLeftView()
            createRightView()
        }
    }
}

private extension CartItem {
    func createLeftView() -> some View {
        Image(item.image)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 124, height: 96)
            .cornerRadius(12)
    }
    func createRightView() -> some View {
        VStack(alignment: .leading, spacing: 24) {
            createRightTopView()
            createRightBottomView()
        }
    }
}

private extension CartItem {
    func createRightTopView() -> some View {
        VStack(alignment: .leading, spacing: 2) {
            createTitleText()
            createLicenseText()
        }
    }
    func createRightBottomView() -> some View {
        HStack(spacing: 0) {
            createQuantityMinusButton()
            Spacer.width(12)
            createQuantityText()
            Spacer.width(12)
            createQuantityPlusButton()
            Spacer()
            createPriceText()
        }
    }
}

private extension CartItem {
    func createTitleText() -> some View {
        Text(item.title)
            .font(.bold(15))
            .foregroundColor(.onBackgroundPrimary)
            .lineLimit(1)
            .fixedSize(horizontal: false, vertical: true)
    }
    func createLicenseText() -> some View {
        Text(item.license)
            .font(.regular(13))
            .foregroundColor(.onBackgroundSecondary)
            .lineLimit(1)
            .fixedSize(horizontal: false, vertical: true)
    }
    func createQuantityMinusButton() -> some View {
        Button(action: onMinusButtonTap) {
            Image("sc-minus")
                .resizable()
                .frame(24)
                .foregroundColor(.onBackgroundTertiary)
        }
    }
    func createQuantityText() -> some View {
        Text(item.quantity.formatted())
            .font(.bold(15))
            .foregroundColor(.onBackgroundPrimary)
            .lineLimit(1)
            .fixedSize(horizontal: false, vertical: true)
    }
    func createQuantityPlusButton() -> some View {
        Button(action: onPlusButtonTap) {
            Image("sc-plus")
                .resizable()
                .frame(24)
                .foregroundColor(.onBackgroundPrimary)
        }
    }
    func createPriceText() -> some View {
        Text(item.price.formatted(.currency(code: "GBP")))
            .font(.semiBold(15))
            .foregroundColor(.accentPrimary)
            .lineLimit(1)
            .fixedSize(horizontal: false, vertical: true)
    }
}

private extension CartItem {
    func onMinusButtonTap() {

    }
    func onPlusButtonTap() {

    }
}

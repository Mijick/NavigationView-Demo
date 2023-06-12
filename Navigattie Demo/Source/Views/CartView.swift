//
//  CartView.swift of Navigattie Demo
//
//  Created by Tomasz Kurylik
//    - Twitter: https://twitter.com/tkurylik
//    - Mail: tomasz.kurylik@mijick.com
//
//  Copyright ©2023 Mijick. Licensed under MIT License.


import SwiftUI
import Navigattie

struct CartView: NavigatableView {
    let items = MockData.CartObject.generate()


    var body: some View {
        VStack(spacing: 0) {
            createNavigationBar()
            createScrollableItems()
            createOrderButton()
            Spacer.height(8)
        }
    }
}

private extension CartView {
    func createNavigationBar() -> some View {
        NavigationBar(title: title).padding(.horizontal, .margin)
    }
    func createScrollableItems() -> some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 40) {
                createCartItems()
                createDiscountsSection()
            }
            .padding(.vertical, 32)
        }
    }
    func createOrderButton() -> some View {
        StandardButton(text: "Place your order", action: onOrderButtonTap).padding(.horizontal, .margin)
    }
}

private extension CartView {
    func createCartItems() -> some View {
        VStack(alignment: .leading, spacing: 20) {
            ForEach(0..<items.count, id: \.self) {
                createCartItem(items[$0])
                createSeparator($0)
            }
        }
    }
    func createDiscountsSection() -> some View {
        VStack(alignment: .leading, spacing: 12) {
            createDiscountsSectionHeader()
            createDiscountItem()
        }
    }
}

private extension CartView {
    func createCartItem(_ item: MockData.CartObject) -> some View {
        CartItem(item: item).padding(.horizontal, .margin)
    }
    func createSeparator(_ index: Int) -> some View {
        Separator().padding(.leading, index < items.count - 1 ? .margin : 0)
    }
    func createDiscountsSectionHeader() -> some View {
        Text("Available discounts (1)")
            .font(.bold(19))
            .foregroundColor(.onBackgroundPrimary)
            .alignHorizontally(.leading, .margin)
    }
    func createDiscountItem() -> some View {
        EmptyView()
    }
}

private extension CartView {
    func onOrderButtonTap() {

    }
}

private extension CartView {
    var title: String { "Chart (\(items.count) item\(items.count == 1 ? "" : "s"))" }
}

//
//  TabBar.swift of Navigattie Demo
//
//  Created by Tomasz Kurylik
//    - Twitter: https://twitter.com/tkurylik
//    - Mail: tomasz.kurylik@mijick.com
//
//  Copyright ©2023 Mijick. Licensed under MIT License.


import SwiftUI

struct TabBar: View {
    var body: some View {
        HStack(spacing: 0) {
            ForEach(Item.allCases, id: \.self, content: createItem)
        }
        .frame(maxWidth: .infinity)
        .padding(.top, 12)
        .padding(.horizontal, .margin)
    }
}

private extension TabBar {
    func createItem(_ item: Item) -> some View {
        Button(action: onItemTap) {
            VStack(spacing: 8) {
                createItemIcon(item)
                createItemText(item)
            }
            .foregroundColor(getColour(item))
        }
        .frame(maxWidth: .infinity)
    }
}

private extension TabBar {
    func createItemIcon(_ item: Item) -> some View {
        Image(item.imageName)
            .resizable()
            .frame(24)
    }
    func createItemText(_ item: Item) -> some View {
        Text(item.rawValue.capitalized)
            .font(.regular(11))
            .lineLimit(1)
    }
}

private extension TabBar {
    func onItemTap() {

    }
}

private extension TabBar {
    func getColour(_ item: Item) -> Color {
        switch item {
            case .home: return .accentPrimary
            case .search, .cart, .bookmarks, .profile: return .onBackgroundSecondary
        }
    }
}

// MARK: - Available Items
fileprivate enum Item: String, CaseIterable { case home, search, cart, bookmarks, profile }
fileprivate extension Item {
    var imageName: String { "sc-\(rawValue)" }
}

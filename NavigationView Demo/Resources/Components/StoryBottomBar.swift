//
//  StoryBottomBar.swift of NavigationView Demo
//
//  Created by Tomasz Kurylik
//    - Twitter: https://twitter.com/tkurylik
//    - Mail: tomasz.kurylik@mijick.com
//
//  Copyright ©2023 Mijick. Licensed under MIT License.


import SwiftUI

struct StoryBottomBar: View {
    var body: some View {
        HStack(spacing: 60) {
            ForEach(Item.allCases, id: \.self, content: createItem)
        }
    }
}

private extension StoryBottomBar {
    func createItem(_ item: Item) -> some View {
        Button(action: { onItemTap(item) }) {
            Image(item.imageName)
                .resizable()
                .frame(26)
                .foregroundColor(item.colour)
        }
    }
}

private extension StoryBottomBar {
    func onItemTap(_ item: Item) {

    }
}

// MARK: - Helpers
fileprivate enum Item: String, CaseIterable { case heart, buy, send }
fileprivate extension Item {
    var imageName: String { "sc-\(rawValue)" }
    var colour: Color {
        switch self {
            case .heart: return .accentSecondary
            case .buy, .send: return .onDarkBackgroundPrimary
        }
    }
}

//
//  HomeView.swift of Navigattie Demo
//
//  Created by Tomasz Kurylik
//    - Twitter: https://twitter.com/tkurylik
//    - Mail: tomasz.kurylik@mijick.com
//
//  Copyright ©2023 Mijick. Licensed under MIT License.


import SwiftUI
import Navigattie

struct HomeView: NavigatableView {
    private let stories = MockData.Story.generate()
    private let saleCards = MockData.SaleCard.generate()


    var body: some View {
        VStack(spacing: 0) {
            createPromoBar()
            createScrollableContent()
            createTabBar()
        }
    }
}

private extension HomeView {
    func createPromoBar() -> some View {
        PromoBar()
    }
    func createScrollableContent() -> some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading, spacing: 0) {
                Spacer.height(32)
                createStoriesContent()
                Spacer.height(52)
                createCardsContent()
                Spacer.height(24)
            }
        }
    }
    func createTabBar() -> some View {
        TabBar()
    }
}

private extension HomeView {
    func createStoriesContent() -> some View {
        VStack(alignment: .leading, spacing: 20) {
            createStoriesHeader()
            createStoriesItems()
        }
    }
    func createCardsContent() -> some View {
        VStack(alignment: .leading, spacing: 20) {
            createCardsHeader()
            createCardsItems()
        }
    }
}

private extension HomeView {
    func createStoriesHeader() -> some View {
        StandardHeader(text: "Best stories").padding(.horizontal, .margin)
    }
    func createStoriesItems() -> some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
                ForEach(stories, id: \.title, content: StoryItem.init)
            }
            .padding(.horizontal, .margin)
        }
    }
    func createCardsHeader() -> some View {
        StandardHeader(text: "Picks for You")
            .addButton("View all", action: {})
            .padding(.horizontal, .margin)
    }
    func createCardsItems() -> some View {
        Grid(alignment: .topLeading, horizontalSpacing: 24, verticalSpacing: 16) {
            ForEach(0..<saleCards.count / 2, id: \.self, content: createGridRow)
        }
        .padding(.horizontal, .margin)
    }
}

private extension HomeView {
    func createGridRow(_ index: Int) -> some View {
        GridRow {
            SaleCardItem(data: saleCards[index])
            SaleCardItem(data: saleCards[index * 2 + 1])
        }
    }
}

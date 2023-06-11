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
            createScrollableContent()
            createTabBar()
        }
    }
}

private extension HomeView {
    func createScrollableContent() -> some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading, spacing: 0) {
                Spacer.height(16)
                createLogoView()
                Spacer.height(44)
                createStoriesContent()
                Spacer.height(44)
                createCardsContent()
                Spacer.height(24)
            }
            .alignHorizontally(.leading, .margin)
        }
    }
    func createTabBar() -> some View {
        TabBar()
    }
}

private extension HomeView {
    func createLogoView() -> some View {
        Image("mc-navigattie-logo")
    }
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
        StandardHeader(text: "Best stories")
    }
    func createStoriesItems() -> some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
                ForEach(stories, id: \.title, content: StoryItem.init)
            }
        }
    }
    func createCardsHeader() -> some View {
        StandardHeader(text: "Picks for You").addButton("View all", action: {})
    }
    func createCardsItems() -> some View {
        EmptyView()
    }
}

private extension HomeView {

}

private extension HomeView {

}

private extension HomeView {

}








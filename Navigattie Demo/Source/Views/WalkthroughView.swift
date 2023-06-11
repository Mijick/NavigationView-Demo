//
//  WalkthroughView.swift of Navigattie Demo
//
//  Created by Tomasz Kurylik
//    - Twitter: https://twitter.com/tkurylik
//    - Mail: tomasz.kurylik@mijick.com
//
//  Copyright ©2023 Mijick. Licensed under MIT License.


import SwiftUI
import Navigattie

struct WalkthroughView: NavigatableView {
    @State private var pageIndex: Int = 0
    private let data = MockData.Walkthrough.generate()


    var body: some View {
        VStack(spacing: 0) {
            Spacer.height(12)
            createSkipButton()
            Spacer()
            createScrollableContent()
            Spacer()
            createPageIndicator()
            Spacer.height(28)
            createNextButton()
            Spacer.height(8)
        }
        .animation(animation, value: pageIndex)
    }
}

private extension WalkthroughView {
    func createSkipButton() -> some View {
        Button(action: onSkipButtonTap) {
            Text("Skip")
                .font(.bold(16))
                .foregroundColor(.accentPrimary)
        }
        .alignHorizontally(.trailing, .margin)
        .visible(if: !isLastPage)
    }
    func createScrollableContent() -> some View {
        TabView(selection: $pageIndex) {
            ForEach(0..<data.count, id: \.self, content: createContent)
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
    }
    func createPageIndicator() -> some View {
        PageIndicator(activePageIndex: pageIndex, numberOfPages: data.count)
    }
    func createNextButton() -> some View {
        StandardButton(text: buttonText, action: onNextButtonTap).padding(.horizontal, .margin)
    }
}

private extension WalkthroughView {
    func createContent(_ index: Int) -> some View {
        VStack(spacing: 0) {
            createIllustration(data[index])
            Spacer.height(24)
            createTitle(data[index])
            Spacer.height(16)
            createDescription(data[index])
        }
        .padding(.horizontal, .margin + 28)
    }
}

private extension WalkthroughView {
    func createIllustration(_ item: MockData.Walkthrough) -> some View {
        Image(item.illustrationName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(height: 268)
    }
    func createTitle(_ item: MockData.Walkthrough) -> some View {
        Text(item.title)
            .font(.bold(27))
            .foregroundColor(.onBackgroundPrimary)
            .multilineTextAlignment(.center)
            .lineSpacing(3)
            .fixedSize(horizontal: false, vertical: true)
    }
    func createDescription(_ item: MockData.Walkthrough) -> some View {
        Text(item.description)
            .font(.regular(16))
            .foregroundColor(.onBackgroundSecondary)
            .multilineTextAlignment(.center)
            .lineSpacing(5)
            .fixedSize(horizontal: false, vertical: true)
    }
}

private extension WalkthroughView {
    func onSkipButtonTap() {
        
    }
    func onNextButtonTap() {
        if !isLastPage { return pageIndex += 1 }
    }
}

private extension WalkthroughView {
    var isLastPage: Bool { pageIndex == data.count - 1 }
}

private extension WalkthroughView {
    var buttonText: String { isLastPage ? "Get Started" : "Next" }
    var animation: Animation { .easeInOut(duration: 0.2) }
}

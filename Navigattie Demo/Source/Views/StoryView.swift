//
//  StoryView.swift of Navigattie Demo
//
//  Created by Tomasz Kurylik
//    - Twitter: https://twitter.com/tkurylik
//    - Mail: tomasz.kurylik@mijick.com
//
//  Copyright ©2023 Mijick. Licensed under MIT License.


import SwiftUI
import Navigattie

struct StoryView: NavigatableView {
    let story: MockData.Story
    @State private var currentIndex: Int = 0
    @State private var currentProgress: CGFloat = 0
    private let timer = Timer.publish(every: 0.05, on: .main, in: .common).autoconnect()
    private let allStories = MockData.Story.generate()


    func configure(view: NavigationConfig) -> NavigationConfig { view.backgroundColour(.darkBackground) }
    var body: some View {
        VStack(spacing: 0) {
            Spacer.height(12)
            createStoriesProgressIndicator()
            Spacer.height(24)
            createTopBar()
            Spacer.height(48)
            createImageView()
            Spacer()
            createBottomBar()
            Spacer.height(20)
        }
        .statusBarHidden()
        .animation(animation, value: currentIndex)
        .onReceive(timer, perform: onTimerTick)
        .onTapGesture(perform: onTap)
    }
}

private extension StoryView {
    func createStoriesProgressIndicator() -> some View {
        ProgressIndicator(numberOfItems: stories.count, currentIndex: currentIndex, currentProgress: currentProgress)
            .padding(.horizontal, margin)
            .animation(nil, value: currentIndex)
    }
    func createTopBar() -> some View {
        StoryTopBar(story: stories[currentIndex]).padding(.horizontal, margin)
    }
    func createImageView() -> some View {
        Image(stories[currentIndex].image)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(maxWidth: .infinity)
            .transition(.cubeRotation)
            .id(currentIndex)
    }
    func createBottomBar() -> some View {
        StoryBottomBar()
    }
}

// MARK: - Timer Handler
private extension StoryView {
    func onTimerTick(_ v: Any) {
        switch currentProgress >= 100 {
            case true: handleIndexChange()
            case false: currentProgress += 2
        }
    }
}
private extension StoryView {
    func handleIndexChange() {
        switch currentIndex == stories.count - 1 {
            case true: timer.upstream.connect().cancel()
            case false: currentProgress = 0; currentIndex += 1
        }
    }
}

// MARK: Tap Gesture Handlers
private extension StoryView {
    func onTap(_ point: CGPoint) {
        switch point.x < UIScreen.width / 2 {
            case true: currentProgress = 0; currentIndex = max(0, currentIndex - 1)
            case false: currentProgress = 0; currentIndex = min(stories.count - 1, currentIndex + 1)
        }
    }
}

private extension StoryView {
    var stories: [MockData.Story] { [story] + allStories.filter { $0.image != story.image } }
}

private extension StoryView {
    var animation: Animation { .easeInOut(duration: 0.5) }
    var margin: CGFloat { 20 }
}

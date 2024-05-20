//
//  StoryItem.swift of NavigationView Demo
//
//  Created by Tomasz Kurylik
//    - Twitter: https://twitter.com/tkurylik
//    - Mail: tomasz.kurylik@mijick.com
//
//  Copyright ©2023 Mijick. Licensed under MIT License.


import SwiftUI

struct StoryItem: View {
    let story: MockData.Story


    var body: some View {
        Button(action: onTap) {
            VStack(spacing: 10) {
                createImage()
                createText()
            }
        }
        .frame(width: 64)
    }
}

private extension StoryItem {
    func createImage() -> some View {
        Image(story.image)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(64)
            .mask(Circle())
    }
    func createText() -> some View {
        Text(story.author)
            .font(.regular(12))
            .foregroundColor(.onBackgroundPrimary)
            .lineLimit(1)
    }
}

private extension StoryItem {
    func onTap() {
        StoryView(story: story).push(with: .scale)
    }
}

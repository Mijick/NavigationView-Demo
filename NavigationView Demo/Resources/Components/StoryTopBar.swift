//
//  StoryTopBar.swift of NavigationView Demo
//
//  Created by Tomasz Kurylik
//    - Twitter: https://twitter.com/tkurylik
//    - Mail: tomasz.kurylik@mijick.com
//
//  Copyright ©2023 Mijick. Licensed under MIT License.


import SwiftUI

struct StoryTopBar: View {
    let story: MockData.Story


    var body: some View {
        HStack(spacing: 0) {
            createImage()
            Spacer.width(12)
            createInformations()
            Spacer()
            createCloseButton()
        }
    }
}

private extension StoryTopBar {
    func createImage() -> some View {
        Image(story.image)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(32)
            .mask(Circle())
    }
    func createInformations() -> some View {
        VStack(alignment: .leading, spacing: 6) {
            createTitleAndTimeText()
            createAuthorText()
        }
    }
    func createCloseButton() -> some View {
        Button(action: pop) {
            Image("sc-close")
                .resizable()
                .frame(24)
                .foregroundColor(.onDarkBackgroundPrimary)
        }
    }
}

private extension StoryTopBar {
    func createTitleAndTimeText() -> some View {
        HStack(spacing: 6) {
            createTitleText()
            createTimeText()
        }
    }
    func createAuthorText() -> some View {
        Text(story.author)
            .font(.regular(13))
            .foregroundColor(.onDarkBackgroundSecondary)
    }
}

private extension StoryTopBar {
    func createTitleText() -> some View {
        Text(story.title)
            .font(.semiBold(15))
            .foregroundColor(.onDarkBackgroundPrimary)
            .lineLimit(1)
    }
    func createTimeText() -> some View {
        Text(story.creationDate.displayAsTimeAgo())
            .font(.medium(12))
            .foregroundColor(.onDarkBackgroundSecondary)
    }
}

// MARK: - Helpers
fileprivate extension Date {
    func displayAsTimeAgo() -> String {
        let formatter = RelativeDateTimeFormatter()
        formatter.unitsStyle = .full
        return formatter.localizedString(for: self, relativeTo: Date())
    }
}

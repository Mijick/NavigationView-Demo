//
//  NavigationBar.swift of Navigattie Demo
//
//  Created by Tomasz Kurylik
//    - Twitter: https://twitter.com/tkurylik
//    - Mail: tomasz.kurylik@mijick.com
//
//  Copyright ©2023 Mijick. Licensed under MIT License.


import SwiftUI

struct NavigationBar: View {
    @Environment(\.openURL) var openURL


    var body: some View {
        VStack(spacing: 0) {
            Spacer.height(12)
            createTopView()
            Spacer.height(8)
            createSeparator()
        }
    }
}

private extension NavigationBar {
    func createTopView() -> some View {
        HStack(spacing: 0) {
            createLogo()
            Spacer()
            createOpenGithubButton()
        }
        .padding(.horizontal, .margin)
    }
    func createSeparator() -> some View {
        Separator()
    }
}

private extension NavigationBar {
    func createLogo() -> some View {
        Image("mc-navigattie-logo")
    }
    func createOpenGithubButton() -> some View {
        Button(action: onVisitGithubButtonTap) {
            Text("Visit Github")
                .font(.semiBold(13))
                .foregroundColor(.onAccent)
                .padding(10)
                .background(Color.onBackgroundPrimary)
                .mask(Capsule())
        }
    }
}

private extension NavigationBar {
    func onVisitGithubButtonTap() {
        openURL(repoUrl)
    }
}

private extension NavigationBar {
    var repoUrl: URL { URL(string: "https://github.com/Mijick")! }
}

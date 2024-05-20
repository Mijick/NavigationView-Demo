//
//  NavigationBar.swift of NavigationView Demo
//
//  Created by Tomasz Kurylik
//    - Twitter: https://twitter.com/tkurylik
//    - Mail: tomasz.kurylik@mijick.com
//
//  Copyright ©2023 Mijick. Licensed under MIT License.


import SwiftUI

struct NavigationBar: View {
    let title: String


    var body: some View {
        ZStack {
            createBackButton()
            createTitle()
        }
        .padding(.vertical, 12)
    }
}

private extension NavigationBar {
    func createBackButton() -> some View {
        Button(action: pop) {
            Image("sc-arrow-left")
                .resizable()
                .frame(28)
                .foregroundColor(.onBackgroundPrimary)
        }
        .alignHorizontally(.leading)
    }
    func createTitle() -> some View {
        Text(title)
            .font(.bold(17))
            .foregroundColor(.onBackgroundPrimary)
    }
}

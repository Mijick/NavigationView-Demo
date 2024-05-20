//
//  PageIndicator.swift of NavigationView Demo
//
//  Created by Tomasz Kurylik
//    - Twitter: https://twitter.com/tkurylik
//    - Mail: tomasz.kurylik@mijick.com
//
//  Copyright ©2023 Mijick. Licensed under MIT License.


import SwiftUI

struct PageIndicator: View {
    let activePageIndex: Int
    let numberOfPages: Int


    var body: some View {
        HStack(spacing: 9) {
            ForEach(0..<numberOfPages, id: \.self, content: createItem)
        }
        .animation(animation, value: activePageIndex)
    }
}

private extension PageIndicator {
    func createItem(_ index: Int) -> some View {
        Circle()
            .fill(colour[index == activePageIndex]!)
            .frame(9)
    }
}

private extension PageIndicator {
    var colour: [Bool: Color] {[ true: .onBackgroundPrimary, false: .onBackgroundTertiary ]}
    var animation: Animation { .easeInOut(duration: 0.2) }
}

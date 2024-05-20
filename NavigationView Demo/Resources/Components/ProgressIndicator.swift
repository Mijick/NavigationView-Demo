//
//  ProgressIndicator.swift of NavigationView Demo
//
//  Created by Tomasz Kurylik
//    - Twitter: https://twitter.com/tkurylik
//    - Mail: tomasz.kurylik@mijick.com
//
//  Copyright ©2023 Mijick. Licensed under MIT License.


import SwiftUI

struct ProgressIndicator: View {
    let numberOfItems: Int
    let currentIndex: Int
    let currentProgress: CGFloat


    var body: some View {
        HStack(spacing: 2) {
            ForEach(0..<numberOfItems, id: \.self, content: createItem)
        }
        .frame(maxWidth: .infinity)
    }
}

private extension ProgressIndicator {
    func createItem(_ index: Int) -> some View {
        ZStack(alignment: .leading) {
            createInactiveItem()
            createActiveItem(index)
        }
        .frame(height: 2)
    }
}

private extension ProgressIndicator {
    func createInactiveItem() -> some View {
        Capsule().fill(Color.onDarkBackgroundPrimary.opacity(0.12))
    }
    func createActiveItem(_ index: Int) -> some View {
        GeometryReader { reader in
            Capsule()
                .fill(Color.onDarkBackgroundPrimary)
                .frame(width: reader.size.width * calculateWidthMultipleFactor(index))
        }
    }
}

private extension ProgressIndicator {
    func calculateWidthMultipleFactor(_ index: Int) -> CGFloat {
        if index < currentIndex { return 1 }
        if index > currentIndex { return 0 }

        return currentProgress / 100
    }
}

//
//  DetailsProductView.swift of Navigattie Demo
//
//  Created by Tomasz Kurylik
//    - Twitter: https://twitter.com/tkurylik
//    - Mail: tomasz.kurylik@mijick.com
//
//  Copyright ©2023 Mijick. Licensed under MIT License.


import SwiftUI

struct DetailsProductView: View {
    let product: MockData.SaleCard


    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            createTopView()
            createDateText()
        }
    }
}

private extension DetailsProductView {
    func createTopView() -> some View {
        HStack(spacing: 0) {
            createStarIcon()
            Spacer.width(2)
            createRatingText()
            Spacer.width(4)
            createRatingCount()
            Spacer.width(4)
            createDotText()
            Spacer.width(4)
            createBuysCountText()
        }
    }
    func createDateText() -> some View {
        Text(dateText)
            .font(.regular(14))
            .foregroundColor(.onBackgroundSecondary)
    }
}

private extension DetailsProductView {
    func createStarIcon() -> some View {
        Image("sc-star")
            .resizable()
            .frame(20)
            .foregroundColor(.accentSecondary)
    }
    func createRatingText() -> some View {
        Text(String(product.rating))
            .font(.bold(15))
            .foregroundColor(.accentSecondary)
    }
    func createRatingCount() -> some View {
        Text(ratingCountText)
            .font(.medium(13))
            .foregroundColor(.onBackgroundSecondary)
    }
    func createDotText() -> some View {
        Text("·")
            .font(.medium(15))
            .foregroundColor(.onBackgroundSecondary)
    }
    func createBuysCountText() -> some View {
        Text(buysText)
            .font(.medium(13))
            .foregroundColor(.onBackgroundSecondary)
    }
}

private extension DetailsProductView {
    var dateText: String { "Published on \(product.creationDate.toString())" }
    var ratingCountText: String { "(\(product.numberOfRatings))" }
    var buysText: String { "\(product.numberOfBuys) buys" }
}

// MARK: - Helpers
fileprivate extension Date {
    func toString() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = .init(identifier: "EN")
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .none
        return dateFormatter.string(from: self)
    }
}

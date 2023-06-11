//
//  MockData.SaleCard.swift of Navigattie Demo
//
//  Created by Tomasz Kurylik
//    - Twitter: https://twitter.com/tkurylik
//    - Mail: tomasz.kurylik@mijick.com
//
//  Copyright ©2023 Mijick. Licensed under MIT License.


import SwiftUI

extension MockData {
    struct SaleCard: Mockable {
        let creationDate: Date
        let image: String
        let title: String
        let description: String
        let author: String
        let price: Double
        let numberOfBuys: Int
        let rating: Double
        let numberOfRatings: Int
    }
}

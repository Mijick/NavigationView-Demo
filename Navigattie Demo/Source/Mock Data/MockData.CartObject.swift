//
//  MockData.CartObject.swift of Navigattie Demo
//
//  Created by Tomasz Kurylik
//    - Twitter: https://twitter.com/tkurylik
//    - Mail: tomasz.kurylik@mijick.com
//
//  Copyright ©2023 Mijick. Licensed under MIT License.


import SwiftUI

extension MockData {
    struct CartObject: Mockable {
        let image: String
        let title: String
        let license: String
        let quantity: Int
        let price: Double
    }
}

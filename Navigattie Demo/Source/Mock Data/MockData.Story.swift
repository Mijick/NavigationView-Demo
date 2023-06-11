//
//  MockData.Story.swift of Navigattie Demo
//
//  Created by Tomasz Kurylik
//    - Twitter: https://twitter.com/tkurylik
//    - Mail: tomasz.kurylik@mijick.com
//
//  Copyright ©2023 Mijick. Licensed under MIT License.


import SwiftUI

extension MockData {
    struct Story: Mockable {
        let creationDate: Date
        let image: String
        let title: String
        let author: String
    }
}

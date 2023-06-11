//
//  MockData.Walkthrough.swift of Navigattie Demo
//
//  Created by Tomasz Kurylik
//    - Twitter: https://twitter.com/tkurylik
//    - Mail: tomasz.kurylik@mijick.com
//
//  Copyright ©2023 Mijick. Licensed under MIT License.


import SwiftUI

extension MockData {
    struct Walkthrough: Mockable {
        let illustrationName: String
        let title: String
        let description: String
    }
}
extension MockData.Walkthrough {
    static func generate() -> [Self] {[
        .init(illustrationName: "ill-walkthrough-1", title: "Lorem non incididunt", description: "Mollit ad irure labore labore occaecat magna. Ut duis velit consequat do aliquip. Aliquip elit pariatur velit."),
        .init(illustrationName: "ill-walkthrough-2", title: "Eiusmod\nnostrud ullamco", description: "Exercitation enim elit voluptate. Quis enim minim irure exercitation fugiat irure amet veniam aliquip."),
        .init(illustrationName: "ill-walkthrough-3", title: "Commodo nostrud", description: "Sint irure mollit fugiat elit reprehenderit esse laboris non. Qui veniam ex deserunt eiusmod ea aliquip.")
    ]}
}

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
extension MockData.Story {
    static func generate() -> [Self] {[
        .init(creationDate: .init("04-29"), image: "placeholder-story-1", title: "Lost and Found", author: "Ava Smith"),
        .init(creationDate: .init("04-30"), image: "placeholder-story-2", title: "A Leap of Faith", author: "Leo Johnson"),
        .init(creationDate: .init("05-23"), image: "placeholder-story-3", title: "The Hidden Key", author: "Mia Brown"),
        .init(creationDate: .init("05-24"), image: "placeholder-story-4", title: "How I stole my socks", author: "Al Bundigo"),
        .init(creationDate: .init("05-26"), image: "placeholder-story-5", title: "The Whimsical Journey", author: "Owen Davis"),
        .init(creationDate: .init("05-29"), image: "placeholder-story-6", title: "Through the Looking Glass", author: "Ella Clark"),
        .init(creationDate: .init("05-30"), image: "placeholder-story-7", title: "Giggles and Goblins", author: "Liam Turner"),
        .init(creationDate: .init("06-02"), image: "placeholder-story-8", title: "The Enchanted Forest", author: "Lily Foster"),
        .init(creationDate: .init("06-04"), image: "placeholder-story-9", title: "The Curious Curio Shop", author: "Zoe White"),
        .init(creationDate: .init("06-07"), image: "placeholder-story-10", title: "Dancing in the Moonligh", author: "Ethan Reed"),
    ]}
}

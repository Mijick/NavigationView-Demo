//
//  MockData.swift of Navigattie Demo
//
//  Created by Tomasz Kurylik
//    - Twitter: https://twitter.com/tkurylik
//    - Mail: tomasz.kurylik@mijick.com
//
//  Copyright ©2023 Mijick. Licensed under MIT License.


import SwiftUI

protocol Mockable: Decodable {}
extension Mockable {
    static func generate() -> [Self] {
        guard let url = Bundle.main.url(forResource: fileName, withExtension: "json"),
              let data = try? Data(contentsOf: url),
              let items = data.decode(with: [Self].self)
        else { return [] }

        return items
    }
}
private extension Mockable {
    static var fileName: String { "MockData-\(self)" }
}


// MARK: - Helpers
fileprivate extension Data {
    func decode<D: Decodable>(with type: D.Type) -> D? {
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601

        let data = try? decoder.decode(type, from: self)
        return data
    }
}
enum MockData {}

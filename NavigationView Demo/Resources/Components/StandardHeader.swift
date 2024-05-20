//
//  StandardHeader.swift of NavigationView Demo
//
//  Created by Tomasz Kurylik
//    - Twitter: https://twitter.com/tkurylik
//    - Mail: tomasz.kurylik@mijick.com
//
//  Copyright ©2023 Mijick. Licensed under MIT License.


import SwiftUI

struct StandardHeader: View {
    let text: String
    @State private var config: ConfigurableData = .init()


    var body: some View {
        HStack(spacing: 0) {
            createHeader()
            Spacer()
            createButton()
        }
    }
}

private extension StandardHeader {
    func createHeader() -> some View {
        Text(text)
            .font(.bold(25))
            .foregroundColor(.onBackgroundPrimary)
    }
    @ViewBuilder func createButton() -> some View { if let buttonText = config.buttonText {
        Button(action: config.buttonAction) {
            HStack(spacing: 0) {
                createButtonText(buttonText)
                createButtonIcon()
            }
            .foregroundColor(.accentSecondary)
        }
    }}
}

private extension StandardHeader {
    func createButtonText(_ text: String) -> some View {
        Text(text).font(.medium(15))
    }
    func createButtonIcon() -> some View {
        Image("sc-forward")
            .resizable()
            .frame(18)
    }
}


//MARK: -Configurables
extension StandardHeader {
    class ConfigurableData {
        var buttonText: String? = nil
        var buttonAction: () -> () = {}
    }

    func addButton(_ text: String, action: @escaping () -> ()) -> Self { then { $0.config.buttonText = text; $0.config.buttonAction = action } }
}

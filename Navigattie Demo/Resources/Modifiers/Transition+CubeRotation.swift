//
//  Transition+CubeRotation.swift of Navigattie Demo
//
//  Created by Tomasz Kurylik
//    - Twitter: https://twitter.com/tkurylik
//    - Mail: tomasz.kurylik@mijick.com
//
//  Copyright ©2023 Mijick. Licensed under MIT License.


import SwiftUI

extension AnyTransition {
    static var cubeRotation: AnyTransition { .asymmetric(
        insertion: .modifier(active: Modifier(progress: 0, direction: .enter), identity: Modifier(progress: 1, direction: .enter)),
        removal: .modifier(active: Modifier(progress: 1, direction: .exit), identity: Modifier(progress: 0, direction: .exit))
    )}
}

// MARK: - Implementation
fileprivate struct Modifier: AnimatableModifier {
    var progress: Double
    var direction: SlideDirection
    var animatableData: Double {
        get { progress }
        set { progress = newValue }
    }


    func body(content: Content) -> some View {
        GeometryReader { geo in
            content
                .rotation3DEffect(Angle(degrees: calcRotation()), axis: (x: 0, y: 1, z: 0), anchor: direction == .enter ? .leading : .trailing, anchorZ: 0, perspective: 0.1)
                .transformEffect(.init(translationX: calcTranslation(geo: geo), y: 0))
        }
    }
}

private extension Modifier {
    func calcTranslation(geo: GeometryProxy) -> CGFloat {
        switch direction {
            case .enter: return geo.size.width - (CGFloat(progress) * geo.size.width)
            case .exit: return -1 * (CGFloat(progress) * geo.size.width)
        }
    }
    func calcRotation() -> Double {
        switch direction {
            case .enter: return 90 - (progress * 90)
            case .exit: return -1 * (progress * 90)
        }
    }
}

// MARK: - Helpers
fileprivate enum SlideDirection { case enter, exit }

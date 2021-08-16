//
//  CustomTransitionModifier.swift
//  views
//
//  Created by Vincio on 7/19/21.
//

import SwiftUI

struct CornerRotateModifier: ViewModifier {
    let amount: Double
    let anchor: UnitPoint

    func body(content: Content) -> some View {
        content.rotationEffect(.degrees(amount), anchor: anchor).clipped()
    }
}

extension AnyTransition {
    static var pivot: AnyTransition {
        .modifier(
            active: CornerRotateModifier(amount: -90, anchor: .topLeading),
            identity: CornerRotateModifier(amount: 0, anchor: .topLeading)
        )
    }
}

extension AnyTransition {
    static var moveAndScale: AnyTransition {
        AnyTransition.move(edge: .leading).combined(with: .scale)
    }
}


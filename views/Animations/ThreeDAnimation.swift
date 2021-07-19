//
//  3DAnimation.swift
//  views
//
//  Created by Vincio on 7/19/21.
//

import SwiftUI

struct ThreeDAnimation: View {
    @State private var animationAmount = 0.0
    var body: some View {
        Button("Tap Me") {
            withAnimation(.interpolatingSpring(stiffness: 5, damping: 1)) {
                self.animationAmount += 360
            }
                    // do nothing
        }
        .padding(50)
        .background(Color.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .rotation3DEffect(.degrees(animationAmount), axis: (x: 0, y: 1, z: 0))
    }
}

struct ThreeDAnimation_Previews: PreviewProvider {
    static var previews: some View {
        ThreeDAnimation()
    }
}

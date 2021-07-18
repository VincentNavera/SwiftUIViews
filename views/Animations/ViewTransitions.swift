//
//  ViewTransitions.swift
//  views
//
//  Created by Vincio on 7/19/21.
//

import SwiftUI

struct ViewTransitions: View {
    @State var show = false

    var body: some View {
        ZStack {
            if !show {
                Text("View Transition")
                    .padding()
                    .background(Capsule().stroke())
            } else {
                RoundedRectangle(cornerRadius: 30)
                    .fill(Color.blue)
                    .padding()
                    //.transition(.move(edge: .bottom))
//                    .transition(.scale(scale: 0.1, anchor: .bottomTrailing))
                    .transition(.slide)
                    //.transition(.scale)
                    //.transition(.opacity)
                    //.transition(.offset(x: 300, y: 300))
                    .zIndex(1)
            }
        }
        .onTapGesture {
            withAnimation(.spring()) {
                show.toggle()
            }
        }
    }
}

struct ViewTransitions_Previews: PreviewProvider {
    static var previews: some View {
        ViewTransitions()
    }
}

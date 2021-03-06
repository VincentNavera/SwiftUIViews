//
//  AnimationGestures.swift
//  views
//
//  Created by Vincio on 7/19/21.
//

import SwiftUI

struct AnimationGestures: View {
    @State private var dragAmount = CGSize.zero
    let letters = Array("Hello SwiftUI")
    @State private var enabled = false

    var body: some View {
        VStack {
            LinearGradient(gradient: Gradient(colors: [.yellow, .red]), startPoint: .topLeading, endPoint: .bottomTrailing)
                        .frame(width: 300, height: 200)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                .offset(dragAmount)
                .gesture(
                    DragGesture()
                        .onChanged { self.dragAmount = $0.translation }
                        .onEnded { _ in
                            withAnimation(.spring()) {
                                self.dragAmount = .zero
                            }
                        }
                    //.onEnded { _ in self.dragAmount = .zero }
            )
            //.animation(.spring())
            HStack(spacing: 0) {
                        ForEach(0..<letters.count) { num in
                            Text(String(self.letters[num]))
                                .padding(5)
                                .font(.title)
                                .background(self.enabled ? Color.blue : Color.red)
                                .offset(self.dragAmount)
                                .animation(Animation.default.delay(Double(num) / 20))
                        }
                    }
                    .gesture(
                        DragGesture()
                            .onChanged { self.dragAmount = $0.translation }
                            .onEnded { _ in
                                self.dragAmount = .zero
                                self.enabled.toggle()
                            }
                    )

        }

    }
}

struct AnimationGestures_Previews: PreviewProvider {
    static var previews: some View {
        AnimationGestures()
    }
}

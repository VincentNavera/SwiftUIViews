//
//  AnimationModifier.swift
//  views
//
//  Created by Vincio on 7/19/21.
//

import SwiftUI

struct AnimationModifier: View {
    @State var show = false
    @State private var animationAmount: CGFloat = 1

    var body: some View {
        ScrollView {
            VStack {
                ZStack {
                    Color.black.ignoresSafeArea()
                        .opacity(show ? 0.8 : 0.2)
                        .animation(.easeOut(duration: 0.8))
                        //.animation(.linear(duration: 0.8))
                        //.animation(nil)

                    RoundedRectangle(cornerRadius: 40)
                        .foregroundColor(.white)
                        .frame(height: 300)
                        .opacity(show ? 1 : 0.5)
                        .padding(show ? 16 : 32)
                        .offset(y: show ? 0 : 30)
                        .animation(.spring(response: 0.5, dampingFraction: 0.4))
                        //.animation(.interpolatingSpring(stiffness: 50, damping: 1))
                    RoundedRectangle(cornerRadius: 40)
                        .frame(height: 300)
                        .offset(y: show ? 600 : 0)
                        .foregroundColor(.white)
                        .shadow(radius: 40)
                        .padding()
                        .animation(.timingCurve(0.2, 0.8, 0.2, 1, duration: 0.8))
                }
                .onTapGesture {
                    show.toggle()
            }

                Button("Tap Me") {
                    self.animationAmount += 1

                }
                .padding(50)
                .background(Color.red)
                .foregroundColor(.white)
                .clipShape(Circle())
                .overlay(
                    Circle()
                        .stroke(Color.red)
                        .scaleEffect(animationAmount)
                        .opacity(Double(2 - animationAmount))
                        .animation(
                                    Animation.easeOut(duration: 1)
                                        .repeatForever(autoreverses: false)
                                )
                        )
                //.scaleEffect(animationAmount)
                //.animation(.easeInOut(duration: 2))
//                .animation(
//                    Animation.easeInOut(duration: 1)
//                        .repeatCount(3, autoreverses: true))
//                .animation(
//                    Animation.easeInOut(duration: 1)
//                        .repeatForever(autoreverses: true)
//                )
                .onAppear {
                    self.animationAmount = 2
                }

                

            }
        }
    }
}

struct AnimationModifier_Previews: PreviewProvider {
    static var previews: some View {
        AnimationModifier()
    }
}

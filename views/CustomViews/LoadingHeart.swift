//
//  LoadingHeart.swift
//  views
//
//  Created by Vincio on 7/19/21.
//

import SwiftUI

struct LoadingHeart: View {
    @State private var animationAmount: CGFloat = 1
    var body: some View {
        Image(systemName: "heart.fill")
            .resizable(resizingMode: .stretch)
            .foregroundColor(Color.red)
            .frame(width: 69.0, height: 69.0)
            .scaleEffect(animationAmount)
            .shadow(color: Color.pink.opacity(0.3), radius: 20, x: 0, y: 10)
            .animation(
                Animation.spring(response: 0.2, dampingFraction: 0.4)
                    .repeatForever(autoreverses: false))

            .onAppear {
                self.animationAmount = 1.2
            }


    }
}

struct LoadingHeart_Previews: PreviewProvider {
    static var previews: some View {
        LoadingHeart()
    }
}

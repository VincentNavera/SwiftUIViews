//
//  SwiftUIView.swift
//  views
//
//  Created by Vincio on 7/19/21.
//

import SwiftUI

struct GradientEffect: View {
    @State fileprivate var isLoading = false
    var body: some View {
        ZStack{
            if isLoading {
                RoundedRectangle(cornerRadius: 25)


            } else {

                RoundedRectangle(cornerRadius: 25)
                    .mask(LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.7), Color.black]), startPoint: .leading, endPoint: .trailing))
            }


        }

        .animation(Animation.easeInOut(duration: 0.7)
                    .repeatForever(autoreverses: false))
        .onAppear {

            isLoading = true

        }
        .frame(width: 300, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)

        
    }
}

struct GradientEffect_Previews: PreviewProvider {
    static var previews: some View {
        GradientEffect()
    }
}

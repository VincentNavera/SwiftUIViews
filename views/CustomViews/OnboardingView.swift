//
//  SwiftUIView.swift
//  views
//
//  Created by Vincio on 7/18/21.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        TabView {
            RoundedRectangle(cornerRadius: 30)
                .fill(Color.blue)
                .padding()
            RoundedRectangle(cornerRadius: 30)
                .fill(Color.red)
                .padding()
            RoundedRectangle(cornerRadius: 30)
                .fill(Color.purple)
                .padding()
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}
struct Onboarding_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}

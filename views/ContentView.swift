//
//  ContentView.swift
//  views
//
//  Created by Vincio on 7/6/21.
//

import SwiftUI

struct ContentView: View {
    @State fileprivate var isLaunching = true

    var body: some View {
        ZStack {
            if isLaunching {

            LoadingHeart()
            } else {
                ScrollView {
                    LazyVStack{
                        TimerView()

                        RatingView()

                        LoaderView()

                        CardWithDataView(title: "title text", image: "bolt.circle.fill", centerText: "123,-", itemTitle: "item title", itemSubtitle:"item subtitle")

                        CardWithImageView(title: "asda", image: "circle.fill", detail: "asda", subtitle: "sdad")

                        CardView()

                        ViewMoreAnimationView()

                        AnimationModifier()

                        ViewTransitions()




                    }

                }

            }
        }
        .onAppear{
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                isLaunching = false
            }
            
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
    }
}

//
//  ContentView.swift
//  views
//
//  Created by Vincio on 7/6/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            LazyVStack{
                TimerView()

                RatingView()

                LoaderView(percentage: 0)

                CardWithDataView(title: "title text", image: "bolt.circle.fill", centerText: "123,-", itemTitle: "item title", itemSubtitle:"item subtitle")

                CardWithImageView(title: "asda", image: "circle.fill", detail: "asda", subtitle: "sdad")
                CardView()




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

//
//  SwiftUIView.swift
//  views
//
//  Created by Vincio on 7/18/21.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        VStack {
            Text("App of the day")
                .font(.title).bold()
                .foregroundColor(.white)
                .shadow(radius: 20)
        }
        .frame(width: 300, height: 400, alignment: .center)
        .background(Color.pink)
        .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
        .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
        .shadow(color: Color.pink.opacity(0.3), radius: 20, x: 0, y: 10)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}

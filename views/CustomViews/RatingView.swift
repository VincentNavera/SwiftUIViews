//
//  RatingView.swift
//  views
//
//  Created by Vincio on 7/17/21.
//

import SwiftUI

struct RatingView: View {
    @State private var rating = 0
    fileprivate let maximumRating = 5
    fileprivate let onColor = Color.red
    fileprivate let offColor = Color.gray
    var body: some View {
        HStack {
            ForEach(1 ..< maximumRating + 1) { index in
                Image(systemName: "waveform.path.ecg")
                    .foregroundColor(
                        index > rating ? offColor : onColor)
                    .onTapGesture {
                        updateRating(index: index)
                    }

            }
        }
    }
    func updateRating(index: Int) {
      rating = index
    }
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            RatingView()
                .previewLayout(.sizeThatFits)
                .preferredColorScheme(.light)
            RatingView()
                .previewLayout(.sizeThatFits)
                .preferredColorScheme(.dark)
        }
    }
}

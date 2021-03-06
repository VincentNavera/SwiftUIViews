//
//  CardWithDataView.swift
//  views
//
//  Created by Vincio on 7/6/21.
//

import SwiftUI

fileprivate var defaultRadius:              CGFloat = 24
fileprivate var basePadding:                CGFloat = 16


fileprivate let lBgColor                = Color(.displayP3, red: 248/255, green: 250/255, blue: 251/255, opacity: 1.0)
fileprivate let dBgColor                = Color(.displayP3, red: 29/255, green: 19/255, blue: 44/255, opacity: 1.0)
fileprivate let lShadowColor            = Color(.displayP3, red: 242/255, green: 242/255, blue: 1, opacity: 1.0)
fileprivate let dShadowColor            = Color(.displayP3, red: 45/255, green: 26/255, blue: 88/255, opacity: 1.0)
fileprivate let lBaseColor              = Color(.displayP3, red: 1, green: 1, blue: 1, opacity: 1.0)
fileprivate let dBaseColor              = Color(.displayP3, red: 30/255, green: 17/255, blue: 44/255, opacity: 1.0)
fileprivate let lTextColor              = Color(.displayP3, red: 30/255, green: 21/255, blue: 49/255, opacity: 1.0)
fileprivate let dTextColor              = Color(.displayP3, red: 1, green: 1, blue: 1, opacity: 1.0)


fileprivate let pinkAccentColor         = Color(.displayP3, red: 1, green: 10/255, blue: 142/255, opacity: 1.0)


fileprivate let titleFont               = Font.system(size: 24, weight: .bold, design: .rounded)
fileprivate let detailFont              = Font.system(size: 18, weight: .semibold, design: .rounded)
fileprivate let subtitleFont            = Font.system(size: 16, weight: .medium, design: .rounded)



struct CardWithDataView: View {
    @Environment(\.colorScheme) var colorScheme
    var title: String
    var image: String
    var centerText: String
    var itemTitle: String
    var itemSubtitle: String

        var body: some View {

            let shadowColor = colorScheme == .dark ? dShadowColor : lShadowColor
            let baseColor   = colorScheme == .dark ? dBaseColor : lBaseColor
            let textColor   = colorScheme == .dark ? dTextColor : lTextColor
            
            ZStack {
                RoundedRectangle(cornerRadius: defaultRadius, style: .continuous)
                    .foregroundColor(baseColor)
                    .shadow(color: shadowColor, radius: defaultRadius)
                VStack(alignment: .leading) {
                    HStack {
                        Text(title)
                            .font(subtitleFont)
                            .foregroundColor(textColor)
                        Spacer()
                        // MARK: Top right icon
                        Image(systemName: image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(pinkAccentColor)
                            .frame(width: 32, height: 32)
                    }

                    Spacer()

                    Text(centerText)
                        .font(titleFont)
                        .foregroundColor(textColor)

                    Spacer()

                    VStack(alignment: .leading) {
                        Text(itemTitle)
                            .font(titleFont)
                            .foregroundColor(textColor)
                        Text(itemSubtitle)
                            .font(detailFont)
                            .foregroundColor(textColor)
                            .opacity(0.5)
                    }
                }
                .padding(24)
            }
            .frame(height: 200)
        }
    }
struct CardWithDataView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CardWithDataView(title: "title text", image: "bolt.circle.fill", centerText: "123,-", itemTitle: "item title", itemSubtitle:"item subtitle")
                .padding(100)
                .previewLayout(PreviewLayout.sizeThatFits)
                .preferredColorScheme(.light)
                .background(lBgColor)
            CardWithDataView(title: "title text", image: "bolt.circle.fill", centerText: "123,-", itemTitle: "item title", itemSubtitle:"item subtitle")
                .padding(100)
                .previewLayout(PreviewLayout.sizeThatFits)
                .preferredColorScheme(.dark)
                .background(dBgColor)
        }
    }
}

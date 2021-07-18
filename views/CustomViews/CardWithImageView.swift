//
//  CardWithImageView.swift
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
fileprivate let yellowAccentColor       = Color(.displayP3, red: 1, green: 0.7843, blue: 0, opacity: 1.0)


fileprivate let titleFont               = Font.system(size: 24, weight: .bold, design: .rounded)
fileprivate let detailFont              = Font.system(size: 18, weight: .semibold, design: .rounded)
fileprivate let subtitleFont            = Font.system(size: 16, weight: .medium, design: .rounded)



struct CardWithImageView: View {
    @Environment(\.colorScheme) var colorScheme
    var title: String
    var image: String
    var detail: String
    var subtitle: String
        var body: some View {

            let shadowColor = colorScheme == .dark ? dShadowColor : lShadowColor
            let baseColor   = colorScheme == .dark ? dBaseColor : lBaseColor
            let textColor   = colorScheme == .dark ? dTextColor : lTextColor
            let accent      = colorScheme == .dark ? yellowAccentColor : pinkAccentColor

            ZStack {
                RoundedRectangle(cornerRadius: defaultRadius, style: .continuous)
                    .foregroundColor(baseColor)
                    .shadow(color: shadowColor, radius: defaultRadius)

                VStack {
                    Text(title)
                        .font(titleFont)
                        .foregroundColor(accent)
                        .padding(.top, basePadding)

                    Image(systemName: image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(accent)
                        .padding(basePadding)

                    // MARK: Name and Category ------------------
                    Text(detail)
                        .font(detailFont)
                        .foregroundColor(textColor)
                    Text(subtitle)
                        .font(subtitleFont)
                        .foregroundColor(textColor)
                        .padding(.bottom, basePadding)
                        .opacity(0.8)
                }
            }
            .frame(width: 160, height: 180)
        }
    }
struct CardWithImageView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CardWithImageView(title: "title", image: "photo.fill.on.rectangle.fill", detail: "detail", subtitle: "subtitle")
                .padding(100)
                .previewLayout(PreviewLayout.sizeThatFits)
                .preferredColorScheme(.light)
                .background(lBgColor)
            CardWithImageView(title: "title", image: "photo.fill.on.rectangle.fill", detail: "detail", subtitle: "subtitle")
                .padding(100)
                .previewLayout(PreviewLayout.sizeThatFits)
                .preferredColorScheme(.dark)
                .background(dBgColor)
        }
    }
}

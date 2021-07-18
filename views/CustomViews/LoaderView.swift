//
//  LoaderView.swift
//  views
//
//  Created by Vincio on 7/6/21.
//

import SwiftUI

fileprivate let titleFont               = Font.system(size: 16, weight: .bold, design: .rounded)
fileprivate var defaultRadius: CGFloat  = 24


fileprivate let lBgColor                = Color(.displayP3, red: 248/255, green: 250/255, blue: 251/255, opacity: 1.0)
fileprivate let dBgColor                = Color(.displayP3, red: 29/255, green: 19/255, blue: 44/255, opacity: 1.0)
fileprivate let lShadowColor            = Color(.displayP3, red: 242/255, green: 242/255, blue: 1, opacity: 1.0)
fileprivate let dShadowColor            = Color(.displayP3, red: 45/255, green: 26/255, blue: 88/255, opacity: 1.0)
fileprivate let lBaseColor              = Color(.displayP3, red: 1, green: 1, blue: 1, opacity: 1.0)
fileprivate let dBaseColor              = Color(.displayP3, red: 30/255, green: 17/255, blue: 44/255, opacity: 1.0)
fileprivate let lTextColor              = Color(.displayP3, red: 30/255, green: 21/255, blue: 49/255, opacity: 1.0)
fileprivate let dTextColor              = Color(.displayP3, red: 1, green: 1, blue: 1, opacity: 1.0)
fileprivate let lfadedBackgroundColor   = Color(.displayP3, red: 240/255, green: 242/255, blue: 246/255, opacity: 1.0)
fileprivate let dfadedBackgroundColor   = Color(.displayP3, red: 16/255, green: 10/255, blue: 23/255, opacity: 1.0)


fileprivate let graphAccentColor        = Color(.displayP3, red: 0.011, green: 0.631, blue: 0.984, opacity: 1.0)



struct LoaderView: View {
    @Environment(\.colorScheme) var colorScheme
    var percentage: Double
    var body: some View {

        let shadowColor = colorScheme == .dark ? dShadowColor : lShadowColor
        let baseColor   = colorScheme == .dark ? dBaseColor : lBaseColor
        let textColor   = colorScheme == .dark ? dTextColor : lTextColor
        let darkFaded   = colorScheme == .dark ? dfadedBackgroundColor : lfadedBackgroundColor

        ZStack {
            RoundedRectangle(cornerRadius: defaultRadius, style: .continuous)
                .foregroundColor(baseColor)
                .shadow(color: shadowColor, radius: defaultRadius)
            VStack {
                HStack {
                    Text("loading progress")
                        .font(titleFont)
                        .foregroundColor(textColor)
                    Spacer()
                    Text("\(Int(percentage))%")
                        .font(titleFont)
                        .foregroundColor(textColor)
                        .opacity(0.8)
                }
                ZStack {
                    GeometryReader { gr in
                        RoundedRectangle(cornerRadius: defaultRadius)
                            .fill(darkFaded)
                            .frame(height: 16)
                        RoundedRectangle(cornerRadius: defaultRadius)
                            .fill(graphAccentColor)
                            .padding(.trailing, 160 - (CGFloat(percentage)/100*160))
                            .frame(height: 16)

                    }
                    .frame(height: 16)
                }
            }
            .padding(.horizontal, 24)
        }
        .frame(height: 86)
    }
}



struct LoaderView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LoaderView(percentage: 100)
                .padding(100)
                .fixedSize()
                .previewLayout(PreviewLayout.sizeThatFits)
                .preferredColorScheme(.light)
                .background(lBaseColor)
            LoaderView(percentage: 1)
                .padding(100)
                .fixedSize()
                .previewLayout(PreviewLayout.sizeThatFits)
                .preferredColorScheme(.dark)
                .background(dBaseColor)
        }
    }
}

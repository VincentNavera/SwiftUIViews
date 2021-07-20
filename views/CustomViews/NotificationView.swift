import SwiftUI

struct NotificationView: View {
    var body: some View {
        Rectangle()
            .frame(width: 580, height: 430)
            .clipped()
            .overlay(VStack(spacing: 0) {
                HStack(spacing: 6) {
                    Image("myImage")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 20, height: 20)
                        .clipped()
                        .mask(RoundedRectangle(cornerRadius: 6, style: .continuous))
                    Text("MESSAGES")
                        .font(.system(size: 13, weight: .regular, design: .default))
                        .foregroundColor(Color.secondary)
                    Spacer()
                    Text("now")
                        .font(.footnote)
                        .foregroundColor(Color.secondary)
                }
                Text("Marisa Brookfield")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .clipped()
                    .font(.system(size: 15, weight: .semibold, design: .default))
                    .padding(.top, 8)
                    .foregroundColor(Color.primary)
                Text("It was great catching up with you the other day. When are you in town next?")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .clipped()
                    .font(.system(size: 15, weight: .regular, design: .default))
                    .padding(.top, 2)
                    .foregroundColor(Color.primary)
            }
            .frame(width: 320)
            .clipped()
            .padding(.all, 12)
            .background(VisualEffectView(style: .systemMaterial), alignment: .center)
            .mask(RoundedRectangle(cornerRadius: 13, style: .continuous))
            .shadow(color: Color(.displayP3, red: 0/255, green: 0/255, blue: 0/255).opacity(0.38), radius: 18, x: 0, y: 14), alignment: .center)
            .foregroundColor(Color.clear)
            .background(Image("background")
                            .resizable()
                            .ignoresSafeArea())
            .mask(Rectangle())
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}

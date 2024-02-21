import SwiftUI

struct AppleIcon: View {
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(Color(red: 0.35, green: 0.35, blue: 0.35))
                .frame(width: 60, height: 60)
            
            RoundedRectangle(cornerRadius: 8)
                .foregroundColor(.black)
                .frame(width: 50, height: 50)
            
            Image(systemName: "applelogo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 30, height: 30)
                .foregroundColor(.white)
        }
    }
}

struct AppleIcon_Previews: PreviewProvider {
    static var previews: some View {
        AppleIcon()
            .previewLayout(.fixed(width: 120, height: 120))
    }
}

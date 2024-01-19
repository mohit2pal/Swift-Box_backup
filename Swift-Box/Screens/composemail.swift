import SwiftUI

struct composemail: View {
    var body: some View {
        ZStack {
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color(#colorLiteral(red: 0.1568627506494522, green: 0.16862745583057404, blue: 0.1921568661928177, alpha: 1)))
                .frame(width: 390, height: 479)
                .padding(.top,-250)
            
            
            
        }
    }
}
#Preview {
    composemail()
}

//
//  sendermail.swift
//  Swift-Box
//
//  Created by SHIVANSHU DIXIT on 19/01/24.
//

import SwiftUI

struct sendermail: View {
    var body: some View {
        HStack {
            // From
            Text("From")
                .font(.custom("Inter Medium", size: 18))
                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.4)))
                .lineSpacing(15)
                .padding(.leading, 10) // Adjusted leading padding

            // Ellipse 1
            Spacer(minLength: 10) // Add spacing to move Ellipse 1 to the right
            Image(uiImage: #imageLiteral(resourceName: "Ellipse 1"))
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 24, height: 24)
                .clipShape(Circle())
                .frame(width: 24, height: 24)

            // muzopro@gmail.com
            Text("muzopro@gmail.com")
                .font(.custom("Inter Regular", size: 15))
                .foregroundColor(Color(#colorLiteral(red: 0.55, green: 0.55, blue: 0.55, alpha: 1)))
                .tracking(-0.33)
                .padding(.trailing, 10) // Adjusted trailing padding

            // Rectangle and Arrow
            Spacer() // Add spacer for flexibility
            HStack {
                Rectangle()
                    .fill(Color.clear)
                    .frame(width: 18, height: 18)

                Image("Arrowdown")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 12, height: 12)
                    .padding(.leading, 4) // Adjust padding as needed
            }
            Spacer() // Add spacer to move Ellipse and Text to the left
        }
        .padding(.horizontal, 16) // Adjusted horizontal padding
    }
}

struct sendermail_Previews: PreviewProvider {
    static var previews: some View {
        sendermail()
    }
}

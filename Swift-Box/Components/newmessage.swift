//
//  newmessage.swift
//  Swift-Box
//
//  Created by SHIVANSHU DIXIT on 19/01/24.
//
import SwiftUI

struct newMessage: View {
    var body: some View {
        HStack {
            Image("Arrow")
            
            // New Message
            Text("New Message")
                .font(.custom("Inter Medium", size: 16))
                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                .tracking(0.33)
                
            
            Spacer()
            // Iconly/Light-Outline/Paper
            Rectangle()
                .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                .frame(width: 20, height: 20)
                .padding(.leading,20 )
            
            // Ellipse 14
            Circle()
                .strokeBorder(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), lineWidth: 1.2)
                .frame(width: 3.3, height: 3.3)
                .padding(.trailing, 4)
            
            Circle()
                .strokeBorder(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), lineWidth: 1.2)
                .frame(width: 3.3, height: 3.3)
                .padding(.trailing, 4)
            
            Circle()
                .strokeBorder(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), lineWidth: 1.2)
                .frame(width: 3.3, height: 3.3)
            
            // Rectangle 16
            Rectangle()
                .fill(Color.clear)
                .frame(width: 20, height: 20)
            
            
            Text("Send")
                .font(.custom("Inter Regular", size: 20))
                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                .tracking(0.33)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 12)
                .background(RoundedRectangle(cornerRadius: 8)
                                .fill(Color.blue))
        }
    }
}

struct NewMessage_Previews: PreviewProvider {
    static var previews: some View {
        newMessage()
    }
}


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
            Spacer().frame(width: 10)
            // New Message
            Text("New Message")
                .font(.custom("Arial Bold", size: 20))
                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                
                
            
            Spacer()
            // Iconly/Light-Outline/Paper
            Button(action: {
                // Action to perform when the button is tapped
            })
            {
                Image(systemName: "doc")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 20, height: 20)
                    .foregroundColor(.white)
                    .padding(.leading, 20)
                
            }
            Spacer().frame(width: 15)
           
            
            
            Button(action: {
                // Action to perform when the button is tapped
            })
            {
                // Ellipse 14
                Circle()
                    .fill(Color.white)
                    .frame(width: 3, height: 3)
                
                Circle()
                    .fill(Color.white)
                    .frame(width: 3, height: 3)
                
                Circle()
                    .fill(Color.white)
                    .frame(width: 3, height: 3)
                
            }
            // Rectangle 16
            Rectangle()
                .fill(Color.clear)
                .frame(width: 1, height: 1)
            
            
            Button(action: {
                // Action to perform when the button is tapped
            }) {
                Text("Send")
                    .font(.custom("Inter Regular", size: 20))
                    .foregroundColor(Color.white)
                    .tracking(0.33)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 14)
                    .padding(.vertical, 6)
                    .background(RoundedRectangle(cornerRadius: 8).fill(Color.blue))
            }

        }
    }
}

struct NewMessage_Previews: PreviewProvider {
    static var previews: some View {
        newMessage()
    }
}

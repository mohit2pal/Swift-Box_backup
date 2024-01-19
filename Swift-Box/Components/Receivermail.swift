//
//  Receivermail.swift
//  Swift-Box
//
//  Created by SHIVANSHU DIXIT on 19/01/24.
//
import SwiftUI

struct Receivermail: View {
    var body: some View {
        HStack {
            // To
            Text("To ").font(.custom("Inter Medium", size: 18)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.4))).lineSpacing(15)
                
            
            // Combined View for "Enrique Gram" and "Rectangle 3"
            HStack(spacing: 8) {
                // Rectangle 3
                Image(uiImage: #imageLiteral(resourceName: "Rectangle 3"))
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 24, height: 24)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                
                
                // Enrique Gram
                Text("Enrique Gram").font(.custom("Arial Regular", size: 12)).foregroundColor(Color(#colorLiteral(red: 0.12, green: 0.12, blue: 0.12, alpha: 1))).tracking(-0.33)
            }
            .padding(8)
            .background(RoundedRectangle(cornerRadius: 8).fill(Color.white))
            
            
            Spacer()
            
            // Rectangle 17
            Rectangle()
                            .fill(Color.clear)
                            .frame(width: 23, height: 23)
                            .overlay(
                                HStack(spacing: -6) {
                                    Rectangle().fill(Color.white).frame(width: 10, height: 2)
                                    Rectangle().fill(Color.white).frame(width: 2, height: 10)
                                }
                                
                            )
        }
                            
                            
    }
}

struct Receivermail_Previews: PreviewProvider {
    static var previews: some View {
        Receivermail()
    }
}
       

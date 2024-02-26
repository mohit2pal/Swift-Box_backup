//
//  hello.swift
//  Swift-Box
//
//  Created by user1 on 23/02/24.
//

import SwiftUI

struct Receivermail : View {
    @State private var receiverName = ""
    
    var body: some View {
        HStack {
            // To
            Text("To     :")
                .font(.custom("Inter Medium", size: 20))
                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.6)))
                .lineSpacing(15)
                .offset(x:-10)
           
            
            
            // TextField for receiver name input
            TextField("Enter receiver's mail id", text: $receiverName)
                .frame(width: 220)
                .font(.custom("Arial Regular", size: 18))
                .foregroundColor(Color(#colorLiteral(red: 0.92, green: 0.92, blue: 0.92, alpha: 1)))
                .tracking(-0.33)
                .padding(8)
                .background(RoundedRectangle(cornerRadius: 8).fill(Color.clear))
                .offset(x:-2)
            
            Spacer().frame(width: 10)
            // Add button
            Button(action: {
                // Add action to handle adding receivers
            }) {
                Image(systemName: "plus.circle")
                    .font(.system(size: 24))
                    .foregroundColor(.blue)
                    .offset(x:10)
            }
        }
        .padding()
    }
}

struct Receivermail_Previews: PreviewProvider {
    static var previews: some View {
        Receivermail()
    }
}


//
//  sendermail.swift
//  Swift-Box
//
//  Created by SHIVANSHU DIXIT on 19/01/24.
//

import SwiftUI

struct sendermail: View {
    @State private var senderAddress = ""
    @State private var selectedAccount = "Default Account"
    
    var body: some View {
        HStack {
            // From
            Text("From :")
                .font(.custom("Inter Medium", size: 20))
                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.6)))
                .lineSpacing(15)
                .offset(x:-10)
            
            // TextField for sender address input
            Text("mohit2pal@gmail.com          ")
                .font(.custom("Arial Regular", size: 18))
                .foregroundColor(Color(#colorLiteral(red: 0.2, green: 0.47, blue: 1, alpha: 1)))
                .tracking(-0.33)
                .padding(8)
                
            
            Spacer()
                .frame(width: 10) // Add space between text field and button
            
            // Arrow down button for selecting account
            Button(action: {
                // Add action to handle account selection
            }) {
                Image(systemName: "chevron.down")
                    .font(.system(size: 24))
                    .foregroundColor(.blue)
                    .offset(x:10)
            }
        }
        .padding()
    }
}

struct sendermail_Previews: PreviewProvider {
    static var previews: some View {
        sendermail()
    }
}

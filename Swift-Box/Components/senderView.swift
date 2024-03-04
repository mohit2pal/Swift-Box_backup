//
//  senderView.swift
//  Swift-Box
//
//  Created by Sarthak Marwah on 08/01/24.
//

import SwiftUI

struct senderView: View {
    
    let senderName: String
    let user: String
    var email: MessageStructure
    
    var body: some View {
        HStack {
            
            ZStack {
                
                Text(getFirstLetter(email: email))
                    .font(.custom("Arial Bold", size: 32))
                    .foregroundColor(Color.white)
                    .frame(width: 66, height: 66)
                    .background(Color.gray)
                    .clipShape(RoundedRectangle(cornerRadius: 17.24))
                    .frame(width: 66.0, height: 66.0)
                
            }
            
            VStack(alignment: .leading) {
                
                //REXT INC
                Text(senderName).font(.custom("Arial Bold", size: 22.8)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                
                HStack {
                    
                    //To:
                    Text("To:").font(.custom("Arial Regular", size: 22.8)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    
                    //sender
                    Text(user).font(.custom("Arial Regular", size: 20)).foregroundColor(Color(#colorLiteral(red: 0.63, green: 0.63, blue: 0.63, alpha: 1)))
                }
                
            }
        }
    }
    
    // Function to get the first letter of the sender's email address
    private func getFirstLetter(email: MessageStructure) -> String {
        guard let from = email.payload.headers.first(where: { $0.name == "From" })?.value else {
            return "?"
        }
        let components = from.components(separatedBy: "@")
        if let firstChar = components.first?.first {
            return String(firstChar).uppercased()
        } else {
            return "?"
        }
    }
}

//#Preview {
//    senderView(senderName: "Enrique Gram", user: "Esther Muzo")
//}

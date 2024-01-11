//
//  senderView.swift
//  Swift-Box
//
//  Created by Sarthak Marwah on 08/01/24.
//

import SwiftUI

struct senderView: View {
    
    let senderName: String
    
    var body: some View {
        HStack {
            
            ZStack {
                
                //622-6229132_mr-green-logo-...
                RoundedRectangle(cornerRadius: 334.5)
                    .fill(Color(#colorLiteral(red: 0.8509804010391235, green: 0.8509804010391235, blue: 0.8509804010391235, alpha: 1)))
                    .frame(width: 68, height: 69)
                
                //REXT INC
                Text("REXT\nINC").font(.headline).fontWeight(.black).foregroundColor(Color.black).tracking(-0.67)
                
            }
            
            VStack(alignment: .leading) {
                
                //REXT INC
                Text(senderName).font(.custom("Arial Bold", size: 22.8)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                
                HStack {
                    
                    //To:
                    Text("To:").font(.custom("Arial Regular", size: 22.8)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    
                    //sender
                    Text("Esther Muzo").font(.custom("Arial Regular", size: 20)).foregroundColor(Color(#colorLiteral(red: 0.63, green: 0.63, blue: 0.63, alpha: 1)))
                }
                
            }
        }
    }
}

#Preview {
    senderView(senderName: "Enrique Gram")
}

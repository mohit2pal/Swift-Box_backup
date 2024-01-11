//
//  Related Mails.swift
//  Swift-Box
//
//  Created by Sarthak Marwah on 11/01/24.
//

import SwiftUI

struct Related_Mails: View {
    var body: some View {
        
        ZStack{
            //Rectangle 8
            RoundedRectangle(cornerRadius: 20)
                .fill(Color(#colorLiteral(red: 0.05833333358168602, green: 0.05833333358168602, blue: 0.05833333358168602, alpha: 1)))
                .frame(width: 350, height: 58.8)
                .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.03999999910593033)), radius:20, x:0, y:2)
            VStack(alignment: .leading){
                
                    //Flat Earth theory is a real thing.
                    Text("Flat Earth theory is a real thing.").font(.custom("Arial Bold", size: 12)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    
                    //The reason behind why this...
                    Text("The reason behind why this theory was hidden for so many years..").font(.custom("Arial Regular", size: 11)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).lineSpacing(10)
                    //Chpsen
                    Text("Chpsen").font(.custom("Arial Regular", size: 12)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .padding(.leading,275)
                    
                
            }
        }
    }
}

#Preview {
    Related_Mails()
}

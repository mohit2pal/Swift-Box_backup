//
//  voiceMail.swift
//  Swift-Box
//
//  Created by Subha on 03/01/24.
//

import SwiftUI
import WebKit

struct voiceMail: View {
    var email: SummaryData
    var body: some View {
        
        ZStack {
            //Rectangle 8
            RoundedRectangle(cornerRadius: 20)
                .fill(Color(#colorLiteral(red: 0.05833333358168602, green: 0.05833333358168602, blue: 0.05833333358168602, alpha: 1)))
                .frame(height: 110)
                .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.03999999910593033)), radius:20, x:0, y:2)
            
            HStack {
                
                VStack(alignment: .leading) {
                    
                    //Flat Earth theory is a rea...
                    Text(email.subject).font(.custom("Arial Bold", size: 14)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .lineLimit(1)
                        .truncationMode(.tail)
                    
                    Spacer()
                    
                    //The reason behind why this...
                    Text(email.snippet).font(.custom("Arial Regular", size: 11)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).lineSpacing(10)
                        .lineLimit(1)
                        .truncationMode(.tail)
                    
                    Spacer()
                    
                    HStack {
                        
                        //Chpsen
                        Text(email.sender).font(.custom("Arial Regular", size: 12)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).opacity(0.4)
                            .lineLimit(1)
                            .truncationMode(.tail)
                        
                        Spacer()
                        
                        //4 mins read
                        Text("4 mins read").font(.custom("Arial Regular", size: 12)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).opacity(0.4)
                        
                    }
                    .padding(.trailing)
                }
                .padding(.trailing)
                
                //Rectangle 16
                WebView(htmlString: email.HTMLbody)
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 121.4, height: 82.1)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .frame(width: 121.4, height: 82.1)
                
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            .frame(height: 110.0)
        }
    }
}

//#Preview {
//    voiceMail()
//}

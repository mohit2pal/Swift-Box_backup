//
//  summaryView.swift
//  Swift-Box
//
//  Created by Subha on 02/01/24.
//

import SwiftUI

struct summaryView: View {
    var body: some View {
        
        ZStack {
            //Rectangle 5558
            RoundedRectangle(cornerRadius: 20)
                .fill(Color(#colorLiteral(red: 0.05833333358168602, green: 0.05833333358168602, blue: 0.05833333358168602, alpha: 1)))
                .frame(height: 108)
            
            VStack(alignment: .leading) {
                
                //Project Deadline Extension Request
                Text("Project Deadline Extension Request").font(.custom("Arial Bold", size: 14)).fontWeight(.heavy).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                
                Spacer()
                
                //Team member seeks an exten...
                Text("Team member seeks an extension due to unforeseen challenges. Need more things to be done.").font(.custom("Arial Regular", size: 12)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).opacity(0.6)
                
                Spacer()
                
                HStack{
                        
                        //document_icon
                    Image("document_icon")
                        .padding(.trailing)
                        
                        //icon_image
                        Image("icon_image")
                    
                    
                    Spacer()
                    //43 Mins Ago
                    Text("43 Mins Ago").font(.custom("Arial Regular", size: 12)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.trailing).opacity(0.6)
                    
                    Spacer()
                    
                    //TestPedia
                    Text("TestPedia").font(.custom("Arial Regular", size: 12)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.trailing).opacity(0.6)
                    
                }
                .padding(.horizontal)
                .padding(.top, 2.7)
                
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            .frame(height: 108.0)
            
        }
    }
}

#Preview {
    summaryView()
}

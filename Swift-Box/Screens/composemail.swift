//
//  composemail.swift
//  Swift-Box
//
//  Created by SHIVANSHU DIXIT on 19/01/24.
//


import SwiftUI

struct composemail: View {
    var body: some View {
        ZStack {
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color(#colorLiteral(red: 0.1568627506494522, green: 0.16862745583057404, blue: 0.1921568661928177, alpha: 1)))
                .frame(width: 390)
                
            
            VStack {
                newMessage()
                    .padding(.top)
                Divider()
                Receivermail()
                    .padding(.top)
                sendermail()
                    .padding(.top)
                subject()
                    .padding(.top)
                brief()
                    .padding(.top)
                
                //Lorem ipsum dolor sit amet...
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus. \nMaecenas eget condimentum velit, sit amet feugiat lectus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent auctor purus luctus enim egestas, ac ").font(.custom("Arial Narrow Italic", size: 14)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).padding(.top).tracking(-0.33).lineSpacing(21)
                    
                
                Spacer()
                
            }
            .padding(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/)
            .padding(.horizontal, 25.0)
            
            
            
        }
    }
}
#Preview {
    composemail()
}

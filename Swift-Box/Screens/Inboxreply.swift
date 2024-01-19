//
//  Inboxreply.swift
//  Swift-Box
//
//  Created by SHIVANSHU DIXIT on 19/01/24.
//

import SwiftUI

struct Inboxreply: View {
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
                HStack{
                    forreply()
                }
                    
                
                Spacer()
                
            }
            .padding(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/)
            .padding(.horizontal, 25.0)
            
            
            
        }
    }
}

#Preview {
    Inboxreply()
}

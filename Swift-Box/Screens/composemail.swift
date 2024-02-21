//
//  composemail.swift
//  Swift-Box
//
//  Created by SHIVANSHU DIXIT on 19/01/24.
//


import SwiftUI

struct composemail: View {
    
    @State private var messageBody: String = ""

    var body: some View {
        ZStack {
            
            
            VStack {
                NavigationLink(destination: RelatedMailScreen()){
                    
                    newMessage()
                        .padding(.top)
                }
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
                TextEditor(text: $messageBody)
                                    .frame(minWidth: 10, maxWidth: 1400, minHeight: 200, maxHeight: .infinity)
                                    .background(Color.gray)
                                    .cornerRadius(10)
                                    .padding()
                                
                
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

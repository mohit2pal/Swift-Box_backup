//
//  voiceScreen.swift
//  Swift-Box
//
//  Created by SHIVANSHU DIXIT on 09/01/24.
//

import SwiftUI

struct voiceScreen: View {
    var body: some View {
        
        ZStack {
            
            VStack {
                
                ZStack {
                    //Rectangle 5556
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color(#colorLiteral(red: 0.1568627506494522, green: 0.16862745583057404, blue: 0.1921568661928177, alpha: 1)))
                        .frame(height: 250)
                    
                    VStack(alignment: .leading) {
                        
                        setting_back()
                            .padding(.bottom, 30.0)
                        
                        
                        //Voice Summary
                        Text("Voice Summary").font(.custom("Arial Bold", size: 33.3)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).padding(.bottom, 40.0).tracking(-0.53).multilineTextAlignment(.center)
                        
                        
                        //Articles about flat Earth theory.
                        Text("Articles about flat Earth \ntheory.").font(.custom("Arial Bold", size: 26.1)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).tracking(0.2).lineSpacing(6)
                        
                    }.padding(.leading, -50.0).frame(width: 390, height: 250)
                    
                }
                
                Image("Siri").resizable().padding(/*@START_MENU_TOKEN@*/).frame(width: 345.0, height: 220.0)
                
                Spacer()
                
                voiceButtons(option1: "Reply", option2: "Archive", option3: "Delete")
                
                Spacer()
                
                voiceMail()
                    .padding(.bottom, 30.0)
                    .padding(.horizontal)
            }
        }
    }
}

#Preview {
    voiceScreen()
}

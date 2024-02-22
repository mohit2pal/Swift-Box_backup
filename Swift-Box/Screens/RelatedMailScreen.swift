//
//  RelatedMailScreen.swift
//  Swift-Box
//
//  Created by Sarthak Marwah on 11/01/24.
//

import SwiftUI

struct RelatedMailScreen: View {
    @State var showSplitSheet: Bool = false
    var body: some View {
        NavigationStack {
            ZStack{
                Color.black
                    .ignoresSafeArea()
                ScrollView {
                    VStack{
                        ZStack{
                            Color.black
                                .ignoresSafeArea()
                            //Rectangle 5556
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color(#colorLiteral(red: 0.1568627506494522, green: 0.16862745583057404, blue: 0.1921568661928177, alpha: 1)))
                                .frame(width: 390, height: 250)
                                .offset(y:-120)
                            //system / light / status ba...
                            
                            
                            
                            VStack{
                                senderView(senderName: "Enrique Gram")
                                    .padding(.leading, -120.0).frame(width: 390, height: 205)
                                    .offset(y : -10)
                                //Articles about flat Earth theory.
                                Text("Articles about flat Earth\ntheory.").font(.custom("Arial Bold", size: 26.1)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.leading).tracking(1.7).lineSpacing(6)
                                    .offset(y:-60)
                                
                                Image("Lorem Ipsum").resizable()
                                    .frame(width: 375, height: 180)
                                    .offset(y:-40)
                            }
                        }
                        voiceMail()
                            .padding(.bottom, 30.0)
                            .padding(.horizontal)
                        Button(action: {
                            showSplitSheet = true
                        }, label: {
                            voiceButtons(option1: "Reply", option2: "Reply All", option3: "Forward")
                        })
                           
                        
                        
                        
                        ZStack{
                            //Rectangle 15
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color(#colorLiteral(red: 0.1568627506494522, green: 0.16862745583057404, blue: 0.1921568661928177, alpha: 1)))
                                .frame(height: 300)
                            
                            VStack(alignment: .leading) {
                                
                                //Related Mails
                                Text("Related Mails").font(.custom("Arial Bold", size: 15)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.leading).padding([.leading, .bottom])
                                
                                Related_Mails()
                                Related_Mails()
                                Related_Mails()
                                
                            }
                            .padding(.all)
                        }
                        .padding(.horizontal, 1.0)
                        
                        
                    }
                }
            }
            .sheet(isPresented: $showSplitSheet,
                   content: {
                composemail()
            })
        }
    }
}
#Preview {
    RelatedMailScreen()
}

//
//  personalView.swift
//  Swift-Box
//
//  Created by Subha on 02/01/24.
//

import SwiftUI

struct personalScreen: View {
    var body: some View {
        
        ZStack{
            Color.black
                .ignoresSafeArea()
            
            ScrollView {
                
                VStack(alignment: .leading) {
                    setting_back()
                        .padding([.top, .leading, .trailing])
                    profile_pic()
                        .padding(.top)
                        .padding(/*@START_MENU_TOKEN@*/.leading, 25.0/*@END_MENU_TOKEN@*/)
                    
                    
                    //All Inboxes
                    Text("All Inboxes").font(.custom("Arial Bold", size: 33.3)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).padding([.top, .leading]).tracking(-0.53).multilineTextAlignment(.center)
                    
                    
                    searchbar()
                        .padding(.horizontal)
                    accountsTab()
                    tabView()
                        .padding(.horizontal)
                        .padding(.bottom, -9.0)
                    
                    //Today MailView
                    ZStack {
                        
                        //Rectangle 2
                        RoundedRectangle(cornerRadius: 27)
                            .fill(Color(#colorLiteral(red: 0.1568627506494522, green: 0.16862745583057404, blue: 0.1921568661928177, alpha: 1)))
                            .frame(height: 325)
                        
                        
                        VStack(alignment: .leading) {
                            Text("Today, ").font(.custom("Arial Bold", size: 27.4)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.leading).padding(.leading)
                            
                            Group {
                                mailView()
                                mailView()
                                mailView()
                            }
                            .padding(.top, 5)
                            .padding(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                            
                        }
                        
                    }
                    
                    //Yesterday MailView
                    ZStack{
                        
                        RoundedRectangle(cornerRadius: 27)
                            .fill(Color(#colorLiteral(red: 0.1568627506494522, green: 0.16862745583057404, blue: 0.1921568661928177, alpha: 1)))
                            .frame( height: 325)
                        
                        VStack(alignment: .leading) {
                            Text("Yesterday").font(.custom("Arial Bold", size: 27.4)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.leading).padding(.leading)
                            
                            Group {
                                mailView()
                                mailView()
                                mailView()
                            }
                            .padding(.top, 5)
                            .padding(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                            
                        }
                    }
                    
                }
                .padding()
            }
        }
    }
}

#Preview {
    personalScreen()
}

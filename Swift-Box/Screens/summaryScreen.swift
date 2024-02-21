//
//  summaryScreen.swift
//  Swift-Box
//
//  Created by Subha on 02/01/24.
//

import SwiftUI

struct summaryScreen: View {
    var body: some View {
        
        ZStack {
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
                    summarytabview()
                        .padding(.horizontal)
                        .padding(.bottom, -9.0)
                    
                    
                    ZStack {
                        
                        //Rectangle 2
                        RoundedRectangle(cornerRadius: 27)
                            .fill(Color(#colorLiteral(red: 0.1568627506494522, green: 0.16862745583057404, blue: 0.1921568661928177, alpha: 1)))
                            .frame(height: 1000)
                            .offset(y:-5)
                        
                        VStack(alignment: .leading) {
                            //Today
                            Text("Today,").font(.custom("Arial Bold", size: 27.4)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.center).padding(.leading, 6.0)
                                .offset(x: 2,y:1)
                            
                            
                            NavigationLink(destination: RelatedMailScreen()) {
                                summaryView()
                            }
                            summaryView()
                            summaryView()
                            summaryView()
                            summaryView()
                            summaryView()
                            summaryView()
                            summaryView()
                        }
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        
                    }
                    .padding(.horizontal, 1.0)
                    
                }
                
            }
            
        }
        .navigationBarHidden(true)
    }
}

#Preview {
    summaryScreen()
}

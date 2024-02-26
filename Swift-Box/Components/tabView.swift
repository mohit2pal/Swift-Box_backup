//
//  tabView.swift
//  Swift-Box
//
//  Created by Subha on 01/01/24.
//

import SwiftUI

struct tabView: View {
    var body: some View {
        NavigationStack {
            HStack {
                NavigationLink(destination: personalScreen()) {
                VStack {
                        
                        //Personal
                        Text("Personal").font(.custom("Arial Regular", size: 16)).foregroundColor(Color(#colorLiteral(red: 0.12, green: 0.37, blue: 0.94, alpha: 1))).multilineTextAlignment(.center).padding(.horizontal, 2.0)
                        .offset(y:0)
                        
                        Image("bar")
                            .padding(.top, -4.0)
                    }
                }
                Spacer().frame(width: 20)
                
                Group {
                    //Work
                    
                    NavigationLink(destination: WorkScreen()) {
                        Text("Work").font(.custom("Arial Regular", size: 15.7)).foregroundColor(Color(#colorLiteral(red: 0.67, green: 0.67, blue: 0.67, alpha: 1))).multilineTextAlignment(.center).padding(.horizontal, 2.0)
                    }
                    
                    Spacer().frame(width: 20)

                    NavigationLink(destination: summaryScreen()) {
                        //Summary
                        Text("Summary").font(.custom("Arial Regular", size: 15.7)).foregroundColor(Color(#colorLiteral(red: 0.67, green: 0.67, blue: 0.67, alpha: 1))).multilineTextAlignment(.center).padding(.horizontal, 2.0)
                    }
                    
                    Spacer().frame(width: 20)

                    //Follow up
                    Text("Follow up").font(.custom("Arial Regular", size: 15.7)).foregroundColor(Color(#colorLiteral(red: 0.67, green: 0.67, blue: 0.67, alpha: 1))).multilineTextAlignment(.center)
                        .padding(.horizontal, 2.0)
                    
                }
                .padding(.bottom, 6.0)
                
                
            }
        }
    }
}

#Preview {
    tabView()
}

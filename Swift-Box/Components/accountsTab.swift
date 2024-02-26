//
//  accountsTab.swift
//  Swift-Box
//
//  Created by Subha on 01/01/24.
//

import SwiftUI

struct accountsTab: View {
    var body: some View {
            HStack {
                
                
                Button(action: {
                                            // Action to add recipient
                                        })
                {
                    VStack{
                        
                        ZStack{
                            
                            //Ellipse 4
                            Circle()
                                .fill(Color(#colorLiteral(red: 0.1568627506494522, green: 0.16862745583057404, blue: 0.1921568661928177, alpha: 1)))
                                .frame(width: 50, height: 50)
                            
                            Image("Vector").resizable().frame(width: 18.0, height: 23.0)
                            
                            notificationDot(count: 4)
                                .padding([.leading, .bottom], 35.0)
                            
                        }
                        
                        Text("iCloud")
                            .foregroundColor(Color.white)
                    }
                }
                .padding(/*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)
                
                Button(action: {
                                            // Action to add recipient
                                        })
                {
                    VStack{
                        
                        ZStack{
                            
                            //Ellipse 3
                            Circle()
                                .fill(Color(#colorLiteral(red: 0.1568627506494522, green: 0.16862745583057404, blue: 0.1921568661928177, alpha: 1)))
                                .frame(width: 50, height: 50)
                            
                            Image("google").resizable().frame(width: 23.0, height: 23.0)
                            
                            notificationDot(count: 8)
                                .padding([.leading, .bottom], 35.0)
                            
                        }
                        
                        Text("GMail")
                            .foregroundColor(Color.white)
                        
                    }
                }
                .padding(.trailing)
                
                
                Button(action: {
                                            // Action to add recipient
                                        })
                {
                    
                    VStack{
                        ZStack{
                            
                            //Ellipse 2
                            Circle()
                                .fill(Color(#colorLiteral(red: 0.1568627506494522, green: 0.16862745583057404, blue: 0.1921568661928177, alpha: 1)))
                                .frame(width: 50, height: 50)
                            
                            Image("addMore").resizable().frame(width: 23.0, height: 23.0)
                            
                        }
                        
                        Text("Add")
                            .foregroundColor(Color.black)
                        
                    }
                }
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    accountsTab()
}

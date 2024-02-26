//
//  hlloo.swift
//  Swift-Box
//
//  Created by user1 on 25/02/24.
//

import SwiftUI

struct composemail: View {
    @State private var toRecipient: String = ""
    @State private var ccBccRecipient: String = ""
    @State private var fromSender: String = ""
    @State private var subject: String = ""
    @State private var message: String = ""
    @State var showSplitSheet: Bool = false

    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Group {
                    HStack{
                        Text("To:")
                        TextField("Recipient", text: $toRecipient)
                            .background(Color.clear) // Set background color to clear

                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                        Button(action: {
                                                    // Action to add recipient
                                                }) {
                                                    Image(systemName: "plus.circle.fill")
                                                        .foregroundColor(.blue)
                                                        .imageScale(.large)
                                                }
                    }
                    Divider()
                    HStack{
                        Text("Cc/Bcc, From:")
                        TextField("Cc/Bcc", text: $ccBccRecipient)
                            .background(Color.clear) // Set background color to clear

                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                    Divider()

                    
                    HStack{
                        
                        Text("Subject:")
                        TextField("Subject", text: $subject)
                            .background(Color.clear) // Set background color to clear

                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                }
                
                Text("Message:")
                    .padding(.top, 10)
                    .padding(.bottom, 5)
                
                TextEditor(text: $message)
                    .frame(minWidth: 10, maxWidth: 100, minHeight: 200)
                    .padding()
                    .border(Color.clear, width: 1)
                
                Spacer()
                
                HStack {
                    Spacer()
                                    Button(action: {
                                        // Action for the first button
                                    }) {
                                        Text(" For        ")
                                            .padding(.horizontal)
                                            .padding(.vertical, 8)
                                            .font(.system(size: 14))
                                            .foregroundColor(.white)
                                            .background(RoundedRectangle(cornerRadius: 8).fill(Color.gray))
                                    }
                                    
                                    Button(action: {
                                        // Action for the second button
                                    }) {
                                        Text(" Against ")
                                            .padding(.horizontal)
                                            .padding(.vertical, 8)
                                            .font(.system(size: 14))
                                            .foregroundColor(.white)
                                            .background(RoundedRectangle(cornerRadius: 8).fill(Color.gray))
                                    }
                    
                    
                  
                    
                    Spacer()
                                }
                                .padding(.bottom)
                
                
            }
            .navigationBarTitle(subject.isEmpty ? "New Message" : subject, displayMode: .automatic)
            .navigationBarItems(trailing:
                HStack {
                    Button(action: {
                        // Action to send the message
                    }) {
                        Text("Save Draft")
                            .padding(.horizontal)
                            .offset(x:20)
                    }
                
                    
                    Button(action: {
                        self.showSplitSheet = false// Action to save the message as a draft
                    }) {
                        Text("Send")
                            .padding(.horizontal)
                            .font(.custom("Inter Regular", size: 20))
                            .foregroundColor(Color.white)
                            .tracking(0.33)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 1)
                            .padding(.vertical, 6)
                            .background(RoundedRectangle(cornerRadius: 8).fill(Color.blue))
                    }
                   
                }
            )
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        composemail()
    }
}

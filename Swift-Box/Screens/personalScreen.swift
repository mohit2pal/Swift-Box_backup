//
//  personalView.swift
//  Swift-Box
//
//  Created by Subha on 02/01/24.
//

import SwiftUI
import GoogleSignIn

struct personalScreen: View {
    @EnvironmentObject var authViewModel: AuthenticationViewModel
    @StateObject var mailDataViewModel = MailDataViewModel()
    private var user: GIDGoogleUser? {
      return GIDSignIn.sharedInstance.currentUser
    }
    
    var body: some View {
        
        NavigationStack {
            ZStack{
                Color.black
                    .ignoresSafeArea()
                
                ScrollView {
                    
                    VStack(alignment: .leading) {
                        setting_back()
                            .padding([.top, .leading, .trailing])
                        profile_pic()
                            .padding(.top)
                            .padding(.leading, 25.0)
                            .onTapGesture(perform: authViewModel.signOut)
                        
                        
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
                                    NavigationLink(destination: openMailScreen()) {
                                        mailView()
                                    }
                                    mailView()
                                    mailView()
                                }
                                .padding(.top, 5)
                                .padding(.leading)
                                
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
                                .padding(.leading)
                                
                            }
                        }
                        
                    }
                    .padding()
                }
                .onAppear {
                    guard self.mailDataViewModel.data != nil else {
                        if !self.authViewModel.hasMailScope {
                            self.authViewModel.addMailScope {
                                self.mailDataViewModel.fetchMail()
                            }
                        } else {
                            self.mailDataViewModel.fetchMail()
                        }
                        return
                    }
                    print(mailDataViewModel.data ?? "No Data")
                }
            }
            .navigationBarHidden(true)
        }
    }
    }

#Preview {
    personalScreen()
        .environmentObject(AuthenticationViewModel())
}

//
//  summaryScreen.swift
//  Swift-Box
//
//  Created by Subha on 02/01/24.
//

import SwiftUI
import GoogleSignIn

struct summaryScreen: View {
    
    @EnvironmentObject var authViewModel: AuthenticationViewModel
    @StateObject  var mailDataViewModel = MailDataViewModel(baseUrl: ScopeStore().profile)
    
    private var user: GIDGoogleUser? {
      return GIDSignIn.sharedInstance.currentUser
    }
    
    var body: some View {
        
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            ScrollView {
                
                VStack(alignment: .leading) {
                    
                    
                    HStack {
                        profile_pic()
                            .padding(.top)
                            .padding(.leading, 25.0)
                            .onTapGesture(perform: authViewModel.signOut)

                        
                        NavigationLink(destination: SettingsView()) {
                            setting_back()
                                .padding([.top, .leading, .trailing])
                        }
                        
                    }

                    
                    
                    //All Inboxes
                    Text("All Inboxes").font(.custom("Arial Bold", size: 33.3)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).padding([.top, .leading]).tracking(-0.53).multilineTextAlignment(.center)
                        .offset(y: 15)

                    
                    
                    searchbar()
                        .padding(.horizontal)
                        .offset(y: 15)

                    accountsTab()
                        .offset(y: 15)
                    summarytabview()
                        .padding(.horizontal)
                        .padding(.bottom, -9.0)
                        .offset(y:15)
                    
                    
                    ZStack {
                        
                        //Rectangle 2
                        RoundedRectangle(cornerRadius: 27)
                            .fill(Color(#colorLiteral(red: 0.1568627506494522, green: 0.16862745583057404, blue: 0.1921568661928177, alpha: 1)))
                            .frame(height: (100 + CGFloat((mailDataViewModel.summaryEmail.count*110))))
                            .offset(y:-5)
                        
                        VStack(alignment: .leading) {
                            //Today
                            Text("Today,").font(.custom("Arial Bold", size: 27.4)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.center).padding(.leading, 6.0)
                                .offset(x: 2,y:1)
                            
                            ForEach(Array(self.mailDataViewModel.summaryEmail)) { email in
                                NavigationLink {
                                    RelatedMailScreen()
                                } label: {
                                    summaryView(email: email)
                                }
                            }
                        }
                        .padding(.all)
                        
                    }
                    .padding(.horizontal, 1.0)
                    .offset(y:18)
                    
                }
                .onAppear {
                    guard self.mailDataViewModel.data != nil else {
                        if !self.authViewModel.hasMailScope {
                            self.authViewModel.addMailScope {
                                mailDataViewModel.fetchMail()
                            }
                        } else {
                            self.mailDataViewModel.fetchMail()
                        }
                        return
                    }
                }
                .padding(.bottom)
                
                if let _ = self.mailDataViewModel.data {
                    Text(mailDataViewModel.data?.emailAddress ?? "No Email")
                } else { Text("No User Signed In") }
                
            }
            .navigationBarHidden(true)
        }
    }
}

#Preview {
    summaryScreen()
        .environmentObject(AuthenticationViewModel())
}

//
//  Swift_BoxApp.swift
//  Swift-Box
//
//  Created by Subha on 01/01/24.
//

import SwiftUI
import GoogleSignIn

@main
struct Swift_BoxApp: App {
    @StateObject var authViewModel = AuthenticationViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(authViewModel)
                .onAppear {
                    GIDSignIn.sharedInstance.restorePreviousSignIn { user, error in
                                if let user = user {
                                  self.authViewModel.state = .signedIn(user)
                                } else if let error = error {
                                  self.authViewModel.state = .signedOut
                                  print("There was an error restoring the previous sign-in: \(error)")
                                } else {
                                  self.authViewModel.state = .signedOut
                                }
                              }
                            }
                .onOpenURL { url in
                    GIDSignIn.sharedInstance.handle(url)
                }
        }
    }
}

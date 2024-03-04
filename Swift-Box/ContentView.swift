//
//  ContentView.swift
//  Swift-Box
//
//  Created by Subha on 01/01/24.
//

import SwiftUI
import GoogleSignIn

struct ContentView: View {
    @EnvironmentObject var authViewModel: AuthenticationViewModel
    
    var body: some View {
        return Group {
            NavigationView {
                switch authViewModel.state {
                case .signedIn:
                    DefaultScreen()
                case.signedOut:
                    loginScreen()
                }
            }
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(AuthenticationViewModel())
}

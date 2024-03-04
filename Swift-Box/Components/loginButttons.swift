//
//  loginButttons.swift
//  Swift-Box
//
//  Created by Subha on 02/01/24.
//

import SwiftUI

struct loginButttons: View {
    @EnvironmentObject var authViewModel: AuthenticationViewModel
    var body: some View {
        HStack {
            Button {
                //Apple Login Integration
            } label: {
                Image("Apple login")
            }
            Spacer().frame(width: 50)
            
            Button {
                authViewModel.signIn()
            } label: {
                Image("Google login")
            }
            Spacer().frame(width: 50)
            Button {
                //Facebook Login Integration Why!
            } label: {
                Image("Facebook login")
            }
        }
    }
}

#Preview {
    loginButttons()
        .environmentObject(AuthenticationViewModel())
}

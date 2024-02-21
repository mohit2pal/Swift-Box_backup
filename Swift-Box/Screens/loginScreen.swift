//
//  loginScreen.swift
//  Swift-Box
//
//  Created by Subha on 08/01/24.
//

import SwiftUI

struct loginScreen: View {
    var body: some View {
        
        NavigationStack {
            
            ZStack {
                
                Color.black
                    .ignoresSafeArea()
                
                VStack {
                    
                    //Welcome back, Varun!
                    Text("Welcome back, Varun!").font(.custom(" Arial Bold", size: 45))
                        .fontWeight(.bold)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).padding(/*@START_MENU_TOKEN@*/.horizontal, 11.0/*@END_MENU_TOKEN@*/).tracking(-0.36)
                        .frame(width: 320 ,alignment: .leading)
                        .padding(/*@START_MENU_TOKEN@*/.bottom, 20.0/*@END_MENU_TOKEN@*/)
                        .padding(/*@START_MENU_TOKEN@*/.top, 100.0/*@END_MENU_TOKEN@*/)
                    Spacer()
                    
                    accountInputField(field: "Username")
                        .padding(.vertical)
                    accountInputField(field: "Password")
                    
                    Spacer()
                    //OR
                    Text("OR").font(.custom("Poppins Bold", size: 25)).fontWeight(.heavy).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).padding(.vertical, 4.0)
                    
                    
                    NavigationLink(destination: personalScreen()){
                        loginButttons()

                    }
                    
                    Spacer()
                    
                    //Don’t have an account yet?
                    Text("Don’t have an account yet?").font(.custom("Poppins Regular", size: 12)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).tracking(-0.36)
                    
                    //Sign Up
                    Text("Sign Up").font(.custom("Poppins Bold", size: 12)).underline().foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).tracking(-0.36)
                }
            }
        }
    }
}

#Preview {
    loginScreen()
}


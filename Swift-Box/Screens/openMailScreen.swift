//
//  openMailScreen.swift
//  Swift-Box
//
//  Created by Sarthak Marwah on 09/01/24.
//

import SwiftUI

struct openMailScreen: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            ScrollView{
                VStack {
                    ZStack {
                        //Rectangle 5556
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color(#colorLiteral(red: 0.1568627506494522, green: 0.16862745583057404, blue: 0.1921568661928177, alpha: 1)))
                            .frame(width: 390, height: 140)
                        
                        VStack(alignment: .leading) {
                            senderView(senderName: "REXT INC")
                            
                        }.padding(.leading, -120.0).frame(width: 390, height: 205)
                    }
                    
                    //sender
                    Text("It’s HERE! NEW Deals new you! Come check out the excitement!").font(.custom("Arial Regular", size: 26.1)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    
                    Image("Email").resizable()
                        .frame(width: 362, height: 1016.01)
                }
            }
        }
    }
}

#Preview {
    openMailScreen()
}

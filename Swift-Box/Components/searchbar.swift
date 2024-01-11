//
//  searchbar.swift
//  Swift-Box
//
//  Created by Subha on 01/01/24.
//

import SwiftUI

struct searchbar: View {
    var body: some View {
        ZStack {
        //Rectangle 1
            RoundedRectangle(cornerRadius: 10)
            .fill(Color(#colorLiteral(red: 0.1568627506494522, green: 0.16862745583057404, blue: 0.1921568661928177, alpha: 1)))
            .frame(width: 350, height: 32)
            
            HStack{
                
                Image("search").resizable()
                    .frame(width: 30.0, height: 30.0)
                
                Text("Search").font(.custom("Arial Regular", size: 17.6)).foregroundColor(Color(#colorLiteral(red: 0.67, green: 0.67, blue: 0.67, alpha: 1))).multilineTextAlignment(.center)
            }
            .frame(width: 340.0, alignment: .leading)
        }
    }
}

#Preview {
    searchbar()
}

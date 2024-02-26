//
//  searchbar.swift
//  Swift-Box
//
//  Created by Subha on 01/01/24.
//

import SwiftUI

struct searchbar: View {
    @State private var searchText = "" // Binding property for text field
    
    var body: some View {
        ZStack {
            // Rectangle 1
            RoundedRectangle(cornerRadius: 10)
                .fill(Color(#colorLiteral(red: 0.1568627506494522, green: 0.16862745583057404, blue: 0.1921568661928177, alpha: 1)))
                .frame(width: 350, height: 35)
            
            HStack{
                Image(systemName: "magnifyingglass") // Use SF Symbol for search icon
                    .resizable()
                    .frame(width: 20, height: 20)
                    .foregroundColor(Color(#colorLiteral(red: 0.67, green: 0.67, blue: 0.67, alpha: 1))) // Search icon color
                
                TextField("Search", text: $searchText) // Bind text field to searchText
                    .font(.custom("Arial Regular", size: 17.6))
                    .foregroundColor(Color(#colorLiteral(red: 0.67, green: 0.67, blue: 0.67, alpha: 1)))
                    .multilineTextAlignment(.leading)
            }
            .frame(width: 340.0, alignment: .leading)
        }
    }
}

struct searchbar_Previews: PreviewProvider {
    static var previews: some View {
        searchbar()
    }
}

//
//  Siri.swift
//  Swift-Box
//
//  Created by user1 on 26/02/24.
//

import SwiftUI

struct Siri: View {
    var body: some View {
       
            Image("Siri")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 30, height: 30)
            
                .font(.system(size: 24))
                .foregroundColor(.blue)
            
                .background(Color.clear)
                .cornerRadius(50) // Make it circular
        
    }
}

struct Siri_Previews: PreviewProvider {
    static var previews: some View {
        Siri()
    }
}


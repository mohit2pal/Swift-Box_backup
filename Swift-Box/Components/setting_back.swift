//
//  setting_back.swift
//  Swift-Box
//
//  Created by Subha on 01/01/24.
//

import SwiftUI

struct setting_back: View {
    var body: some View {
        HStack {
            Spacer()
            
            //Settings
            Text("Settings").font(.custom("Arial Bold", size: 22)).foregroundColor(Color(#colorLiteral(red: 0.12, green: 0.37, blue: 0.94, alpha: 1))).multilineTextAlignment(.center).padding(.leading, -4.0)
            
            Image("arrow")
                .rotationEffect(.degrees(180))
        }
    }
}

#Preview {
    setting_back()
}

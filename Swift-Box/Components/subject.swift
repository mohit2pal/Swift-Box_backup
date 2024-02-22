//
//  subject.swift
//  Swift-Box
//
//  Created by SHIVANSHU DIXIT on 19/01/24.
//

import SwiftUI

struct subject: View {
    var body: some View {
        HStack{
            Text("Subject ").font(.custom("Inter Medium", size: 12)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.4))).lineSpacing(15)
                
            Spacer()
            
            Text("Articles about flat earth theory")
                .font(.system(size: 14))
                .multilineTextAlignment(.leading)
                .frame(width: 300, alignment: .leading) // You can adjust the size as needed
                // Add other modifiers or styling if necessary
        }
    }
}

#Preview {
    subject()
}

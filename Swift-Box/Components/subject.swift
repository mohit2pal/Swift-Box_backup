//
//  subject.swift
//  Swift-Box
//
//  Created by SHIVANSHU DIXIT on 19/01/24.
//

import SwiftUI

struct subject: View {
    var body: some View {
        HStack {
            Text("Subject: ")
                .font(.custom("Inter Medium", size: 20))
                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.6)))
               
            
            Text("Articles about flat earth theory")
                .font(.system(size: 16))
                .foregroundColor(Color.white)
                .multilineTextAlignment(.leading)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding(.horizontal)
        .offset(x:32)
    }
}

struct subject_Previews: PreviewProvider {
    static var previews: some View {
        subject()
    }
}

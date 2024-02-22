//
//  forreply.swift
//  Swift-Box
//
//  Created by SHIVANSHU DIXIT on 19/01/24.
//

import SwiftUI

struct forreply: View {
    var body: some View {
        Text("For Flat Earth")
            .font(.custom("Arial Bold", size: 10))
            .foregroundColor(Color.white)
            .lineSpacing(15)
            .padding(8)
            .background(
                RoundedRectangle(cornerRadius: 8)
                    .fill(Color(UIColor.darkGray))
                    .frame(width: 127, height: 28, alignment: .leading)
            )
    }
}

#Preview {
    forreply()
}

//
//  againstreply.swift
//  Swift-Box
//
//  Created by SHIVANSHU DIXIT on 19/01/24.
//

import SwiftUI

struct againstreply: View {
    var body: some View {
        //Against Flat Earth
        Text("Against Flat Earth").font(.custom("Arial Bold", size: 10)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
            .lineSpacing(15)            .padding(8)
            .background(
                RoundedRectangle(cornerRadius: 8)
                    .fill(Color(UIColor.darkGray))
                    .frame(width: 127, height: 28, alignment: .leading)
            )
    }
}

#Preview {
    againstreply()
}

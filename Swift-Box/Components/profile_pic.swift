//
//  profile_pic.swift
//  Swift-Box
//
//  Created by Subha on 01/01/24.
//

import SwiftUI

struct profile_pic: View {
    var body: some View {
        //Ellipse 1
        Image(uiImage: #imageLiteral(resourceName: "propic"))
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 60, height: 60)
            .clipShape(Circle())
        .frame(width: 50, height: 50)
    }
}

#Preview {
    profile_pic()
}

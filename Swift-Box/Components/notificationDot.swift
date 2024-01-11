//
//  notificationDot.swift
//  Swift-Box
//
//  Created by Subha on 02/01/24.
//

import SwiftUI

struct notificationDot: View {
    
    let count: Int
    
    init(count: Int = 4) {
        self.count = count
    }
    var body: some View {
        
        ZStack {

        //Ellipse 6
            Circle()
            .fill(Color(#colorLiteral(red: 0.11764705926179886, green: 0.37254902720451355, blue: 0.9411764740943909, alpha: 1)))
            .frame(width: 15, height: 15)
            
            //4
            Text(String(count)).font(.custom("Arial Regular", size: 12.4)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
        }
    }
}

#Preview {
    notificationDot()
}

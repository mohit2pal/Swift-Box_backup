//
//  voiceButtons.swift
//  Swift-Box
//
//  Created by Subha on 03/01/24.
//

import SwiftUI

struct voiceButtons: View {
    var body: some View {
        
        HStack {
            
            ZStack {
                //Rectangle 5559
                RoundedRectangle(cornerRadius: 5)
                    .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.10000000149011612)))
                    .frame(width: 109, height: 28)
                
                //Reply
                Text("Reply").font(.custom("Arial Bold", size: 10)).foregroundColor(Color(#colorLiteral(red: 0.12, green: 0.37, blue: 0.94, alpha: 1))).lineSpacing(15)
                
            }
            
            ZStack {
                
                //Rectangle 5559
                RoundedRectangle(cornerRadius: 5)
                    .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.10000000149011612)))
                    .frame(width: 109, height: 28)
                
                //Archive
                Text("Archive").font(.custom("Arial Bold", size: 10)).foregroundColor(Color(#colorLiteral(red: 0.12, green: 0.37, blue: 0.94, alpha: 1))).lineSpacing(15)
                
            }
            
            ZStack {
                
                //Rectangle 5559
                RoundedRectangle(cornerRadius: 5)
                    .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.10000000149011612)))
                    .frame(width: 109, height: 28)
                
                //Delete
                Text("Delete").font(.custom("Arial Bold", size: 10)).foregroundColor(Color(#colorLiteral(red: 0.12, green: 0.37, blue: 0.94, alpha: 1))).lineSpacing(15)
                
            }
            
        }
    }
}

#Preview {
    voiceButtons()
}

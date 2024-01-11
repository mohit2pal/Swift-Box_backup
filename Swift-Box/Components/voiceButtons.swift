//
//  voiceButtons.swift
//  Swift-Box
//
//  Created by Subha on 03/01/24.
//

import SwiftUI

struct voiceButtons: View {
    
    let option1: String
    let option2: String
    let option3: String
  
    
    var body: some View {
        
        HStack {
            
            ZStack {
                //Rectangle 5559
                RoundedRectangle(cornerRadius: 5)
                    .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.10000000149011612)))
                    .frame(width: 109, height: 28)
                
                //Reply
                Text(option1).font(.custom("Arial Bold", size: 10)).foregroundColor(Color(#colorLiteral(red: 0.12, green: 0.37, blue: 0.94, alpha: 1))).lineSpacing(15)
                
            }
            
            ZStack {
                
                //Rectangle 5559
                RoundedRectangle(cornerRadius: 5)
                    .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.10000000149011612)))
                    .frame(width: 109, height: 28)
                
                //Archive
                Text(option2).font(.custom("Arial Bold", size: 10)).foregroundColor(Color(#colorLiteral(red: 0.12, green: 0.37, blue: 0.94, alpha: 1))).lineSpacing(15)
                
            }
            
            ZStack {
                
                //Rectangle 5559
                RoundedRectangle(cornerRadius: 5)
                    .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.10000000149011612)))
                    .frame(width: 109, height: 28)
                
                //Delete
                Text(option3).font(.custom("Arial Bold", size: 10)).foregroundColor(Color(#colorLiteral(red: 0.12, green: 0.37, blue: 0.94, alpha: 1))).lineSpacing(15)
                
            }
            
        }
    }
}

#Preview {
    voiceButtons(option1: "Reply", option2: "Archive", option3: "Delete")
    
}

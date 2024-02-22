//
//  voiceButton.swift
//  Swift-Box
//
//  Created by user1 on 12/01/24.
//

import SwiftUI

struct voiceButton: View {
    var body: some View {
        
        NavigationStack {
            
            HStack {
                Spacer()
                VStack {
                    Spacer()
                    
                    NavigationLink(destination: voiceScreen()) {
                        //Rectangle 5
                        RoundedRectangle(cornerRadius: 16)
                            .fill(Color(#colorLiteral(red: 0.11764705926179886, green: 0.37254902720451355, blue: 0.9411764740943909, alpha: 1)))
                            .frame(width: 81.852, height: 36)
                    }
                }
            }
        }
    }
}

#Preview {
    voiceButton()
}

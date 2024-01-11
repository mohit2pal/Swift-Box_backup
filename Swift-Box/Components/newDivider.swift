//
//  newDivider.swift
//  Swift-Box
//
//  Created by Subha on 02/01/24.
//

import SwiftUI

struct newDivider: View {
            let color: Color
            let height: CGFloat
            
    init(color: Color = Color.gray, height: CGFloat = 0.5) {
                self.color = color
                self.height = height
            }
            
            var body: some View {
                color
                    .frame(height: height)
            }
}

#Preview {
    newDivider()
}

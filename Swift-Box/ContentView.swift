//
//  ContentView.swift
//  Swift-Box
//
//  Created by Subha on 01/01/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationSplitView {
            personalScreen()
        } detail: {
            Text("Select the Email To Preview")
        }
    }
    
}

#Preview {
    ContentView()
}

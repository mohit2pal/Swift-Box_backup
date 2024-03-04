//
//  Base64Decoder.swift
//  Swift-Box
//
//  Created by subha on 03/03/24.
//

import Foundation
import SwiftSoup

final class Decoder: ObservableObject {
    
    func decodeBase64String(_ base64String: String) -> String? {
        // Step 1: Pad the base64 string if needed
        var paddedBase64 = base64String
        while paddedBase64.count % 4 != 0 {
            paddedBase64.append("=")
        }
        
        // Step 2: Replace characters for HTTP transfers
        let replacedBase64 = paddedBase64
            .replacingOccurrences(of: "-", with: "+")
            .replacingOccurrences(of: "_", with: "/")
        
        // Step 3: Convert the prepared base64 string into Data
        if let decodedData = Data(base64Encoded: replacedBase64, options: .ignoreUnknownCharacters) {
            // Convert Data to String
            if let decodedString = String(data: decodedData, encoding: .utf8) {
                return decodedString
            } else {
                return nil
            }
        } else {
            return nil
        }
    }
    
    func removeHTMLTags(from htmlString: String) -> String {
        
        do {
                let document = try SwiftSoup.parse(htmlString)
                
                // Remove all script and style elements
                try document.select("script, style").remove()
                
                // Get the text content of the document
                let cleanText = try document.text()
                
                return cleanText
            } catch {
                print("Error while removing HTML and CSS: \(error.localizedDescription)")
                return htmlString
            }
    }

}

//
//  MailResponseStructure.swift
//  Swift-Box
//
//  Created by subha on 06/02/24.
//

import Foundation

struct MailResponseStructure: Codable {
    
    let emailAddress: String
    let messagesTotal: Int
    let threadsTotal: Int
    let historyId: String
    
}

extension MailResponseStructure {
    enum Erro: Swift.Error {
        
        case noMailInResult
    }
}

/*
 {
 "emailAddress": "mohit2pal@gmail.com",
 "messagesTotal": 4014,
 "threadsTotal": 3643,
 "historyId": "2571810"
 }
 */

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

struct MessegeListStructure: Codable {
    
    var messages = [messageData]()
    let nextPageToken: String
    let resultSizeEstimate: Int
}

struct messageData: Codable {
    
    let id: String
    let threadId: String
}

extension MessegeListStructure {
    enum Error: Swift.Error {
        case noMailInResult
    }
}

extension MailResponseStructure {
    enum Error: Swift.Error {
        
        case noMailInResult
    }
}

/*
 profile
 {
 "emailAddress": "mohit2pal@gmail.com",
 "messagesTotal": 4014,
 "threadsTotal": 3643,
 "historyId": "2571810"
 }
 
 messeges.list
 {
   "messages": [
     {
       "id": "18db54deaaf9e4e6",
       "threadId": "18db54deaaf9e4e6"
     },
     {
       "id": "18db512072ae80fb",
       "threadId": "18db512072ae80fb"
     },
   ],
   "nextPageToken": "17823904924268490236",
   "resultSizeEstimate": 201
 }

 */

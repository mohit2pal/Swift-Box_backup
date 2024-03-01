//
//  OpenAIResponseMail.swift
//  Swift-Box
//
//  Created by Sarthak Marwah on 01/03/24.
//

import Foundation

struct Message: Encodable {
    let id = UUID()
    let role: SenderRole
    let content: String
    let createAt: Date
}

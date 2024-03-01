//
//  ChatViewModel.swift
//  ChatGPTApp
//
//  Created by Sarthak Marwah on 22/02/24.
//

import Foundation
extension ChatView {
    class ViewModel: ObservableObject {
        @Published var messages: [Message] = [Message(role: .system, content: "Whatever content is given to you, you have to generate two seperate polar replies to it, like if it is a mail about a proposal, create a proposal acceptance draft and a Proposal restructuring draft, and generate two seperate messages for each response", createAt: Date())]
        
        @Published var currentInput: String = ""
        
        private let openAIService = OpenAIService()
        func sendMessage() {
            let newMessage = Message( role: .user, content: currentInput, createAt: Date())
            messages.append(newMessage)
            currentInput = ""
            
            Task {
                let response = await openAIService.sendMessage(messages: messages)
                guard let receivedOpenAIMessage = response?.choices.first?.message else{
                    print("Had no received message")
                    return
                }
                let receivedMessage = Message( role: receivedOpenAIMessage.role, content: receivedOpenAIMessage.content, createAt: Date())
                await MainActor.run{
                    messages.append(receivedMessage)
                }
            }
        }
    }
}
    
    struct Message: Encodable {
        let id = UUID()
        let role: SenderRole
        let content: String
        let createAt: Date
    }

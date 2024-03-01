//
//  ChatViewModel.swift
//  ChatGPTApp
//
//  Created by Sarthak Marwah on 22/02/24.
//

import Foundation
extension ChatView {
    class ViewModel: ObservableObject {
        @Published var messages: [Message] = [Message(role: .system, content: "Whatever content is given to you, your work is to summarise it,and it should be done in exactly 10 words at all times even if user asks for more or content is very large and finally it should be a 10 word complete sentence that make sense", createAt: Date())]
        
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

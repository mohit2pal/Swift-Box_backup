//
//  ChatViewModel.swift
//  ChatGPTApp
//
//  Created by Sarthak Marwah on 22/02/24.
//

import Foundation


final class OpenAIViewModel: ObservableObject {
    
    @Published var messages: [Message] = [Message(role: .system, content: "Whatever content is given to you, your work is to summarise it,and it should be done in exactly 10 words at all times even if user asks for more or content is very large and finally it should be a 10 word complete sentence that make sense", createAt: Date())]
    
    private let openAIService = OpenAIService()
    
    func sendMessage(currentInput: MessageStructure) {
        
        var message: String = ""
        
        if let inputData = currentInput.payload.body.data{
            
            if let data = Data(base64Encoded: inputData) {
                if let message = String(data: data, encoding: .utf8) {
                    print(message)
                }
            }
            
        } else {print("Not in the function")}
        
        
        let newMessage = Message( role: .user, content: message, createAt: Date())
        messages.append(newMessage)
        
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

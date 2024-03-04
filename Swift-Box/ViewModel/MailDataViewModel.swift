//
//  MailDataViewModdel.swift
//  Swift-Box
//
//  Created by subha on 06/02/24.
//

import Combine
import Foundation
import SwiftUI


final class MailDataViewModel: ObservableObject {
    
    private var decoder = Decoder()
    
    @Published var messages: [Message] = [Message(role: .system, content: "Whatever content is given to you, your work is to summarise it,and it should be done in exactly 10 words at all times even if user asks for more or content is very large and finally it should be a 10 word complete sentence that make sense", createAt: Date())]
    
    private let openAIService = OpenAIServices()
    
    @Published private(set) var data: MailResponseStructure?
    @Published private(set) var ids: MessegeListStructure?
    @Published private(set) var message: MessageStructure?
    
    @Published var emails: [MessageStructure] = []
    
    @Published var decodedEmails: Set<EmailHTML> = []
    
    @Published var summaryEmail: [SummaryData] = []
    
    private var cancellable: AnyCancellable?
    private var idcancellable: AnyCancellable?
    private var messagecancellable: AnyCancellable?
    
    private var messageCancellables: [AnyCancellable] = []
    
    private var baseUrl: String
    
    private lazy var mailLoader = MailLoader(baseUrlString: baseUrl)
    
    func fetchMail() {
        
        mailLoader.mailPublisher { publisher in self.cancellable = publisher.sink {completion in
            switch completion {
            case .finished:
                break
            case .failure(let error):
                //                self.data  = "MAIL ERROR"
                print("Error retrieving data: \(error)")
            }
        } receiveValue: { data in
            self.data = data
            print(self.data ?? "No data")
            
            self.fetchMailIds()
        }
        }
    }
    
    func fetchMailIds() {
        mailLoader.fetchMailIds(urlString: ScopeStore().messegesList) { publisher in self.idcancellable =
            publisher.sink {completion in
                switch completion {
                case .finished:
                    break
                case .failure(let error):
                    print("Error retriveing mail id: \(error)")
                }
            } receiveValue: { data in
                self.ids = data
                print(data)
                
                self.fetchMessages()
            }
        }
    }
    
    func fetchMessages() {
        
        if let messages = self.ids?.messages {
            for id in messages {
                mailLoader.fetchMessage(urlString: ScopeStore().messegesGet, id: id.id) {
                    publisher in let cancellable =
                    publisher.sink {completion in
                        switch completion {
                        case .finished:
                            break
                        case .failure(let error):
                            print("Error retrieving message: \(error)")
                        }
                    } receiveValue: {data in
                        self.message = data
                        self.appendMails()
                    }
                    self.messageCancellables.append(cancellable)
                }
            }
            
        } else { print("No Data message")}
        
    }
    
    func appendMails() {
        
        if let _ = self.message {
            self.emails.append(message!)
            self.decodeEmails()
        } else {print("No Email")}
    }
    
    func decodeEmails() {
        
        for email in emails {
                if let bodyData = email.payload.body.data {
                    // If email body is in the main body
                    if let decodedString = decoder.decodeBase64String(bodyData) {
                        self.decodedEmails.insert(EmailHTML(id: email.id, HTMLbody: decodedString, snippet: email.snippet, subject: subject(email: email)))
                    } else {
                        print("Failed to convert email with id: \(email.id)")
                    }
                } else if let parts = email.payload.parts {
                    // If email body is in different parts
                    for part in parts {
                        if let partData = part.body.data {
                            if let decodedString = decoder.decodeBase64String(partData) {
                                if part.partId == "1" {
                                    self.decodedEmails.insert(EmailHTML(id: email.id, HTMLbody: decodedString, snippet: email.snippet, subject: subject(email: email)))
                                }
                            } else {
                                print("Failed to convert email part with id: \(part.partId)")
                            }
                        }
                    }
                } else {
                    print("Email contains no Base64 Email Data.")
                }
            }
        
        self.fetchSummary()
    }
    
    func fetchSummary() {
        
        for data in decodedEmails {
            let newMessage = Message( role: .user, content: decoder.removeHTMLTags(from: data.HTMLbody), createAt: Date())
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
                    
                    summaryEmail.append(SummaryData(id: data.id, HTMLbody: data.HTMLbody, snippet: data.snippet, subject: data.subject, summary: receivedMessage.content))
                    
                    print(summaryEmail)
                }
            }
            
            
        }
    }
    
    func subject(email: MessageStructure) -> String {
        for header in email.payload.headers {
            if header.name == "Subject" {
                return header.value
            }
        }
        return "Invalid Header"
    }

    
    init(baseUrl: String) {
        self.baseUrl = baseUrl
    }
    
}

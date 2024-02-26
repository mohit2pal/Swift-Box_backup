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
    
    @Published private(set) var data: MailResponseStructure?
    @Published private(set) var ids: MessegeListStructure?
    @Published private(set) var message: MessageStructure?
    
    @Published var emails: [MessageStructure] = []
    
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
        } else {print("No Email")}
    }

    
    init(baseUrl: String) {
        self.baseUrl = baseUrl
    }
    
}

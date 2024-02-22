//
//  MessegeDataViewModel.swift
//  Swift-Box
//
//  Created by user1 on 21/02/24.
//

import Combine
import Foundation


final class MessegeDataViewModel: ObservableObject {
    
    @Published private(set) var data: MessegeListStructure?
    private var cancellable: AnyCancellable?
    
    private var baseUrl: String
    
    private lazy var mailLoader = MailLoader(baseUrlString: baseUrl)
    
    func fetchMail() {
        
        mailLoader.mailListPublisher { publisher in self.cancellable = publisher.sink {completion in
            switch completion {
            case .finished:
                break
            case .failure(let error):
                //                self.data  = "MAIL ERROR"
                print("Error retrieving data: \(error)")
            }
        } receiveValue: { data in
            self.data = data
            print(data)
           }
        }
    }
    
    init(baseUrl: String) {
        self.baseUrl = baseUrl
    }
    
}

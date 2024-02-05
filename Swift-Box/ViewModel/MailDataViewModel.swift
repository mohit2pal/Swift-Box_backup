//
//  MailDataViewModdel.swift
//  Swift-Box
//
//  Created by subha on 06/02/24.
//

import Combine
import Foundation


final class MailDataViewModel: ObservableObject {
    
    @Published private(set) var data: MailResponseStructure?
    
    private var cancellable: AnyCancellable?
    private let mailLoader = MailLoader()
    
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
           }
        }
    }
}

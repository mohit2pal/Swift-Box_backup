//
//  MailLoader.swift
//  Swift-Box
//
//  Created by user1 on 18/01/24.
//

import Combine

import Foundation
import GoogleSignIn


final class MailLoader: ObservableObject {
    
    static let mailScope = "https://www.googleapis.com/auth/gmail.metadata"
    private let baseUrlString = "https://gmail.googleapis.com/gmail/v1/users/me/profile"
    
    private lazy var components: URLComponents? = {
        var comps = URLComponents(string: baseUrlString)
//        comps?.queryItems = []
        return comps
    }()
    
    private lazy var request: URLRequest? = {
        guard let components = components, let url = components.url else { return nil }
        return URLRequest(url: url)
    }()
    
    
    private lazy var session: URLSession? = {
        guard let accessToken = GIDSignIn
            .sharedInstance
            .currentUser?
            .accessToken
            .tokenString else { return nil }
        let configuration = URLSessionConfiguration.default
        
        configuration.httpAdditionalHeaders = [
            "Authorization": "Bearer \(accessToken)"
        ]
        return URLSession(configuration: configuration)
    }()
    
    private func sessionWithFreshToken(completion: @escaping (Result<URLSession, Error>) -> Void) {
        GIDSignIn.sharedInstance.currentUser?.refreshTokensIfNeeded { user, error in
            guard let token = user?.accessToken.tokenString else {
                completion(.failure(.couldNotCreateURLSession(error)))
                return
            }
            let configuration = URLSessionConfiguration.default
            configuration.httpAdditionalHeaders = [
                "Authorization": "Bearer \(token)"
            ]
            let session = URLSession(configuration: configuration)
            completion(.success(session))
        }
    }
    
    func mailPublisher(completion: @escaping
                       (AnyPublisher<MailResponseStructure, Error>) -> Void) {
        sessionWithFreshToken{ [weak self] result in
            switch result {
            case .success(let authSession):
                guard let request = self?.request else {
                    return completion(Fail(error:
                            .couldNotCreateURLRequest).eraseToAnyPublisher())
                }
                let mPublisher = authSession.dataTaskPublisher(for: request)
                    .tryMap {data, error -> MailResponseStructure in
                        let decoder = JSONDecoder()
                        print(decoder)
                        let mailResponse = try decoder.decode(MailResponseStructure.self, from: data)
                        print(mailResponse)
                        return mailResponse
                    }
                    .mapError {error -> Error in
                        guard let loaderError = error as? Error else {
                            return Error.couldNotFetchMail(underlying: error)
                        }
                        return loaderError
                    }
                    .receive(on: DispatchQueue.main)
                    .eraseToAnyPublisher()
                completion(mPublisher)
            case .failure(let error):
                completion(Fail(error: error).eraseToAnyPublisher())
            }
        }
    }
}

extension MailLoader {
  /// An error representing what went wrong in fetching a user's number of day until their birthday.
  enum Error: Swift.Error {
    case couldNotCreateURLSession(Swift.Error?)
    case couldNotCreateURLRequest
    case userHasNoMail
    case couldNotFetchMail(underlying: Swift.Error)
  }
}

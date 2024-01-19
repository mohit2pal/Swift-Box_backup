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
    
    static let mailScope = "https://mail.google.com/"
//    private let baseUrlString = " "
    
    
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
}

extension MailLoader {
  /// An error representing what went wrong in fetching a user's number of day until their birthday.
  enum Error: Swift.Error {
    case couldNotCreateURLSession(Swift.Error?)
    case couldNotCreateURLRequest
    case userHasNoBirthday
    case couldNotFetchBirthday(underlying: Swift.Error)
  }
}

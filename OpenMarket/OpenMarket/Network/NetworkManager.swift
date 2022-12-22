//
//  NetworkManager.swift
//  OpenMarket
//
//  Created by dhoney96 on 2022/12/22.
//

import Foundation

class NetworkManager {
    private let session: URLSession

    init(session: URLSession = URLSession.shared) {
        self.session = session
    }

    func dataTask(request: URLRequest?, completion: @escaping (Result<Data?, NetworkError>) -> Void) {
        guard let request = request else {
            return
        }

        session.dataTask(with: request) { data, response, error in
            guard error == nil else {
                return completion(.failure(.defaultError))
            }

            guard let httpResponse = response as? HTTPURLResponse,
                  (200...299).contains(httpResponse.statusCode) else {
                return completion(.failure(.responseError))
            }

            guard let data = data else {
                return completion(.failure(.dataError))
            }

            completion(.success(data))

        }.resume()
    }
}

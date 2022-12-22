//
//  EndPoint.swift
//  OpenMarket
//
//  Created by dhoney96 on 2022/12/15.
//

import Foundation

protocol APIRequest {
    var baseURL: String { get }
    var path: Path { get }
    var method: HttpMethod { get }
    var queryParameter: Query? { get }
    var bodyParameter: [BodyParams: BodyItem]? { get } // 이 부분은 나중에 post 구현할 때 고민
    var header: String? { get } // 이 부분은 나중에 post 구현할 때 고민
}

extension APIRequest {
    private func appendPath() -> String? {
        return baseURL + path.description
    }
    
    private func appendQuery() -> URL? {
        guard let fullPath = self.appendPath() else {
            return nil
        }
        
        if queryParameter == nil {
            return URL(string: fullPath)
        }
        
        var components = URLComponents(string: fullPath)
        components?.queryItems = queryParameter?.dictionary.map { URLQueryItem(name: $0.key, value: $0.value) }
        
        return components?.url
    }
    
    func getURLRequest() -> URLRequest? {
        guard let url = self.appendQuery() else {
            return nil
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = self.method.rawValue
        
        return request
    }
}

//
//  EndPoint.swift
//  OpenMarket
//
//  Created by dhoney96 on 2022/12/15.
//

import Foundation

protocol EndPoint {
    var baseURL: String { get }
    var path: Path { get }
    var method: HttpMethod { get }
    var queryParameter: Query? { get }
    var bodyParameter: [BodyParams: BodyItem]? { get } // post, fetch 에서 필요
    var header: String? { get } // post, fetch, delete 에서 필요
    
    func addQuery() -> URL
}

// EndPoint에서 해야 하는 작업들
// request를 만들어야 한다. ( 모든 EndPoint에서 가지고 있어야 하는 메서드이다.)

extension EndPoint {
    private func makeURL() -> URL {
        switch self.method {
        case .get:
            return self.addQuery()
        case .post:
            return self.addQuery()
        case .delete:
            return self.addQuery()
        }
    }
    
    func getURLRequest() -> URLRequest {
        var request = URLRequest(url: self.makeURL())
        request.httpMethod = self.method.rawValue
        
        return request
    }
}

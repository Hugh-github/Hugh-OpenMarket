//
//  EndPoint.swift
//  OpenMarket
//
//  Created by dhoney96 on 2022/12/15.
//

protocol EndPoint {
    var baseURL: String { get }
    var path: String { get }
    var method: HttpMethod { get }
    var queryParameter: [Query: Int]? { get }
    
    func makeFullPath() -> String
}

extension EndPoint {
    func makeFullPath() -> String {
        return self.baseURL + self.path
    }
}

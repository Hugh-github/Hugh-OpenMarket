//
//  EndPoint.swift
//  OpenMarket
//
//  Created by dhoney96 on 2022/12/15.
//

import Foundation

protocol EndPoint {
    var baseURL: String { get }
    var path: String { get }
    var method: HttpMethod { get }
    var queryParameter: [String: Int]? { get }
}

extension EndPoint {
    private func makeBaseComponents() -> String {
        return self.baseURL + self.path
    }
    
    private func makeItemListComponents() {
        let components = URLComponents(string: makeBaseComponents())
        
        if queryParameter == nil {
            return
        }
    }
}

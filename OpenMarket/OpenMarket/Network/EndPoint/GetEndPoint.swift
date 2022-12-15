//
//  GetEndPoint.swift
//  OpenMarket
//
//  Created by dhoney96 on 2022/12/15.
//

import Foundation

class GetEndPoint: EndPoint {
    var baseURL: String
    var path: String
    var queryParameter: [Query : Int]?
    var method: HttpMethod {
        return .get
    }
    
    init(
        baseURL: String = "https://openmarket.yagom-academy.kr",
        path: String = "/api/products",
        queryParameter: [Query: Int]? = nil
    ) {
        self.baseURL = baseURL
        self.path = path
        self.queryParameter = queryParameter
    }
    
    func makeItmeListURL() -> URL? {
        guard let queryParameter = self.queryParameter else {
            return nil
        }
        
        var baseComponents = URLComponents(string: makeFullPath())
        let pageNumber = URLQueryItem(name: Query.pageNumber.rawValue, value: "\(queryParameter[Query.pageNumber]!)") // 옵셔널 바인딩 or 딕셔너리를 제외한 다른 방법 고민
        let itemsPerPage = URLQueryItem(name: Query.itemsPerPage.rawValue, value: "\(queryParameter[Query.itemsPerPage]!)")
        
        baseComponents?.queryItems = [pageNumber, itemsPerPage]
        
        return baseComponents?.url
    }
    
    func makeItemURL() -> URL? {
        guard let queryParameter = self.queryParameter else {
            return nil
        }
        
        let fullPath = makeFullPath() + "/" + "\(queryParameter[Query.itemId]!)"
        
        return URL(string: fullPath)
    }
}

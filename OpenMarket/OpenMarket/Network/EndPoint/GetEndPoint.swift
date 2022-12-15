//
//  GetEndPoint.swift
//  OpenMarket
//
//  Created by dhoney96 on 2022/12/15.
//

class GetEndPoint: EndPoint {
    var baseURL: String
    var path: String
    var queryParameter: [String : Int]?
    var method: HttpMethod {
        return .get
    }
    
    init(
        baseURL: String = "https://openmarket.yagom-academy.kr",
        path: String = "/api/products",
        queryParameter: [String: Int]? = nil
    ) {
        self.baseURL = baseURL
        self.path = path
        self.queryParameter = queryParameter
    }
}

//
//  PostEndPoint.swift
//  OpenMarket
//
//  Created by dhoney96 on 2022/12/17.
//

class PostEndPoint: EndPoint {
    var baseURL: String
    var path: String
    var queryParameter: [Query : Int]?
    var method: HttpMethod {
        return .get
    }
    var bodyParameter: [BodyParams : BodyItem]?
    var header: String?
    
    init(
        baseURL: String = "https://openmarket.yagom-academy.kr",
        path: String = "/api/products",
        queryParameter: [Query: Int]? = nil,
        bodyParameter: [BodyParams: BodyItem]? = nil,
        header: String? = nil
    ) {
        self.baseURL = baseURL
        self.path = path
        self.queryParameter = queryParameter
        self.bodyParameter = bodyParameter
        self.header = header
    }
}

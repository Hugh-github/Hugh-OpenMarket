//
//  GetEndPoint.swift
//  OpenMarket
//
//  Created by dhoney96 on 2022/12/15.
//

import Foundation

class EndPoint: APIRequest {
    var baseURL: String
    var path: Path
    var queryParameter: Query?
    var method: HttpMethod
    var bodyParameter: [BodyParams : BodyItem]?
    var header: String?
    
    init(
        baseURL: String = "https://openmarket.yagom-academy.kr",
        path: Path = .defaultPath,
        queryParameter: Query? = nil,
        method: HttpMethod,
        bodyParameter: [BodyParams: BodyItem]? = nil,
        header: String? = nil
    ) {
        self.baseURL = baseURL
        self.path = path
        self.queryParameter = queryParameter
        self.method = method
        self.bodyParameter = bodyParameter
        self.header = header
    }
}

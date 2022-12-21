//
//  GetEndPoint.swift
//  OpenMarket
//
//  Created by dhoney96 on 2022/12/15.
//

import Foundation

class GetEndPoint: EndPoint {
    var baseURL: String
    var path: Path
    var queryParameter: Query? // 제네릭 하게 만들 필요가 있다.
    var method: HttpMethod {
        return .get
    }
    var bodyParameter: [BodyParams : BodyItem]?
    var header: String?
    
    init(
        baseURL: String = "https://openmarket.yagom-academy.kr",
        path: Path = .defaultPath,
        queryParameter: Query? = nil,
        bodyParameter: [BodyParams: BodyItem]? = nil,
        header: String? = nil
    ) {
        self.baseURL = baseURL
        self.path = path
        self.queryParameter = queryParameter
        self.bodyParameter = bodyParameter
        self.header = header
    }
    
    func addQuery() -> URL {

    }
}

// 만약 ItemList와 Item에서 사용할 각각의 객체를 따로 만들어서 사용하자.

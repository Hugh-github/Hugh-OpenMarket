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
    var queryParameter: [Query: Int]? { get } // get 에서만 필요
    var bodyParameter: [BodyParams: BodyItem]? { get } // post, fetch 에서 필요
    var header: String? { get } // post, fetch, delete 에서 필요
}

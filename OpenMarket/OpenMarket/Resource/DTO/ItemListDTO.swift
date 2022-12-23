//
//  OpenMarketDTO.swift
//  OpenMarket
//
//  Created by dhoney96 on 2022/12/15.
//

struct ItemListDTO: Decodable {
    var pageNo: Int
    var itemsPerPage: Int
    var totalCount: Int
    var offset: Int
    var limit: Int
    var lastPage: Int
    var hasNext: Bool
    var hasPrev: Bool
    var pages: [ItemDTO]
}

//
//  EndPointBuilder.swift
//  OpenMarket
//
//  Created by dhoney96 on 2022/12/22.
//

struct EndPointBuilder {
    static func getItemListGetEndPoint(pageNumber: Int, itemsPerPage: Int) -> EndPoint {
        return EndPoint(queryParameter: .itmeList(pageNumber: pageNumber, itemsPerPage: itemsPerPage), method: .get)
    }
    
    static func getDetailItemGetEndpoint(itemId: Int) -> EndPoint {
        return EndPoint(path: .detailItemPath(itemNumber: itemId), method: .get)
    }
}

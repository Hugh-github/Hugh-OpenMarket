//
//  Query.swift
//  OpenMarket
//
//  Created by dhoney96 on 2022/12/15.
//

enum Query {
    case itmeList(pageNumber: Int, itemsPerPage: Int)
    
    var dictionary: [String: String] {
        var dict = [String: String]()
        
        switch self {
        case .itmeList(pageNumber: let page, itemsPerPage: let itemsCount):
            dict.updateValue("\(page)", forKey: "page_no")
            dict.updateValue("\(itemsCount)", forKey: "items_per_page")
            return dict
        }
    }
}


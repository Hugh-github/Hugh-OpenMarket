//
//  Path.swift
//  OpenMarket
//
//  Created by dhoney96 on 2022/12/21.
//

enum Path {
    case defaultPath
    case detailItemPath(itemNumber: Int)
    
    var description: String {
        switch self {
        case .defaultPath:
            return "/api/products"
        case .detailItemPath(itemNumber: let number):
            return "/api/products/\(number)"
        }
    }
}

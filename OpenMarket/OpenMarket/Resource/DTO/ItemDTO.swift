//
//  ItemDTO.swift
//  OpenMarket
//
//  Created by dhoney96 on 2022/12/15.
//

import Foundation

struct ItemDTO: Decodable {
    var id: String
    var vendorId: String
    var vendorName: String
    var name: String
    var description: String
    var thumbnail: String
    var currency: String
    var price: Int
    var barginPrice: Int
    var discountedPrice: Int
    var stock: Int
    var createdAt: Date
    var issuedAt: Date
    
    enum CondingKeys: String, CodingKey {
        case id = "id"
        case vendorID = "vendor_id"
        case vendorName = "vendorName"
        case name = "name"
        case description = "description"
        case thumbnail = "thumbnail"
        case currency = "currency"
        case price = "price"
        case barginPrice = "bargin_price"
        case discountedPrice = "discounted_price"
        case stock = "stock"
        case createdAt = "created_at"
        case issuedAt = "issued_at"
    }
}

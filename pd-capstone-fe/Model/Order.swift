//
//  Order.swift
//  pd-capstone-fe
//
//  Created by Nazrin Shah on 30/3/23.
//

import Foundation

struct Order: Hashable, Codable {
    enum CodingKeys: String, CodingKey {
        case id, subtotal, items
        case orderStatus = "status"
        case platformFee = "plaform_fee"
        case deliveryFee = "delivery_fee"
    }
    
    var id: Int?
    var orderStatus: Int?
    var items: [OrderItem]?
    var subtotal: Float64?
    var platformFee: Float64?
    var deliveryFee: Float64?
    
    init(items: [OrderItem], subtotal: Float64, platformFee: Float64, deliveryFee: Float64) {
        self.items = items
        self.subtotal = subtotal
        self.platformFee = platformFee
        self.deliveryFee = deliveryFee
    }
}

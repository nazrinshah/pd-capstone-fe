//
//  Dish.swift
//  pd-capstone-fe
//
//  Created by Nazrin Shah on 29/3/23.
//

import Foundation
import SwiftUI

struct Dish: Hashable, Codable, Identifiable {
    enum CodingKeys: String, CodingKey {
        case id, name, status, price, description, currency
        case vendorId = "vendor_id"
        case imageName = "image_name"
    }
    
    var id: Int?
    var vendorId: Int?
    var name: String?
    var status: Int?
    var price: Double?
    var description: String?
    var currency: String?
    
    private var imageName: String
    
    var image: Image {
        Image(imageName)
    }
    
    init() {
        imageName = "fp-drink-gong-cha-pearl-milk-tea"
    }
    
    func toOrderItem(quantity: Int, remarks: String) -> OrderItem {
        return OrderItem(id: self.id!, name: self.name!, price: self.price!, quantity: quantity, remarks: remarks, imageName: self.imageName)
    }
    
    func toSwimlaneItem() -> SwimlaneItem {
        return SwimlaneItem(id: self.id!, name: self.name!, price: self.price!, imageName: self.imageName)
    }
}

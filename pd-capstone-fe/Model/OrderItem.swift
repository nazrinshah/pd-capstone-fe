//
//  OrderItem.swift
//  pd-capstone-fe
//
//  Created by Nazrin Shah on 20/3/23.
//

import Foundation
import SwiftUI

struct OrderItem: Hashable, Codable, Identifiable {
    var id: Int?
    var name: String? = ""
    var price: Double?
    var quantity: Int?
    var remarks: String? = ""
    
    private var imageName: String
    
    var image: Image {
        Image(imageName)
    }
    
    init() {
        self.quantity = 1
        self.price = 0.0
        self.imageName = "fp-drink-gong-cha-pearl-milk-tea"
    }
    
    init(id: Int, name: String, price: Double, quantity: Int, remarks: String, imageName: String) {
        self.id = id
        self.name = name
        self.price = price
        self.quantity = quantity
        self.remarks = remarks
        self.imageName = imageName
    }
}


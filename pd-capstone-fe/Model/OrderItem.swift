//
//  OrderItem.swift
//  pd-capstone-fe
//
//  Created by Nazrin Shah on 20/3/23.
//

import Foundation
import SwiftUI

struct OrderItem: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var price: Double
    var quantity: Int
    var description: String
    
    private var imageName: String
    
    var image: Image {
        Image(imageName)
    }
    
    init() {
        self.id = 10
        self.name = "new object"
        self.price = 0.0
        self.quantity = 1
        self.description = "12313"
        self.imageName = "fp-drink-gong-cha-pearl-milk-tea"
    }
}

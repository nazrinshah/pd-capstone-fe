//
//  OrderItem.swift
//  pd-capstone-fe
//
//  Created by Nazrin Shah on 20/3/23.
//

import Foundation
import SwiftUI

struct OrderItem: Hashable, Codable {
    var name: String
    var price: Double
    var quantity: Int
    var imageName: String
}

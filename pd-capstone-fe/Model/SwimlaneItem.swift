//
//  SwimlaneItem.swift
//  pd-capstone-fe
//
//  Created by Nazrin Shah on 21/3/23.
//

import Foundation
import SwiftUI

struct SwimlaneItem: Hashable, Codable {
    var id: Int
    var name: String
    var price: Double
    var description: String
    
    private var imageName: String
    
    var image: Image {
        Image(imageName)
    }
    
    init(id: Int, name: String, price: Double, description: String, imageName: String) {
        self.id = id
        self.name = name
        self.price = price
        self.description = description
        self.imageName = imageName
    }
}

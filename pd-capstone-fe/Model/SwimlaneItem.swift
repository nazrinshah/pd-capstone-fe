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
    
    private var imageName: String
    
    var image: Image {
        Image(imageName)
    }
    
    init(id: Int, name: String, price: Double, imageName: String) {
        self.id = id
        self.name = name
        self.price = price
        self.imageName = imageName
    }
}

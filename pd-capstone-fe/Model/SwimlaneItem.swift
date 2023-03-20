//
//  SwimlaneItem.swift
//  pd-capstone-fe
//
//  Created by Nazrin Shah on 21/3/23.
//

import Foundation
import SwiftUI

struct SwimlaneItem: Hashable, Codable {
    var name: String
    var price: Double
    
    private var imageName: String
    
    var image: Image {
        Image(imageName)
    }
}

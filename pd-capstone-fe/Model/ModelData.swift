//
//  ModelData.swift
//  pd-capstone-fe
//
//  Created by Nazrin Shah on 21/3/23.
//

import Foundation
import Combine

final class ModelData: ObservableObject {
    @Published var order: [OrderItem] = load("orderData.json")
    @Published var drinks: [SwimlaneItem] = load("drinksData.json")
    @Published var total: Float64 = 0.0
    
    let deliveryFee: Float64 = 3.0
    let platformFee: Float64 = 0.4
}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}

//
//  Checkout.swift
//  pd-capstone-fe
//
//  Created by Nazrin Shah on 21/3/23.
//

import SwiftUI

struct Vendor: Codable, Identifiable {
    enum CodingKeys: String, CodingKey {
        case id, name, status
        case openingHours = "opening_hours"
    }
    
    let id: Int
    let name: String
    let status: Int
    let openingHours: String
    
    init() {
        id = 1
        name = ""
        status = 0
        openingHours = ""
    }
}

struct Checkout: View {
    @State private var vendors = [Vendor]()
    @State private var vendor = Vendor()
    
    var body: some View {
        VStack {
            List(vendors) { vendor in
                VStack(alignment: .leading) {
                    Text(vendor.name)
                        .font(.headline)
                    Text("\(vendor.status)")
                }
            }
            .task {
                do {
                    let url = URL(string: "http://localhost:8080/vendors")!
                    let (data, _) = try await URLSession.shared.data(from: url)
                    vendors = try JSONDecoder().decode([Vendor].self, from: data)
                } catch {
                    vendors = []
                }
            }
        }
    }
}

struct Checkout_Previews: PreviewProvider {
    static var previews: some View {
        Checkout()
    }
}

struct Joke: Codable {
    let value: String
}

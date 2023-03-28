//
//  Checkout.swift
//  pd-capstone-fe
//
//  Created by Nazrin Shah on 21/3/23.
//

import SwiftUI

struct Message: Decodable, Identifiable {
    let id: Int
    let from: String
    let text: String
}

struct Vendor: Codable, Identifiable {
    enum CodingKeys: String, CodingKey {
        case id = "vendor_id"
        case name = "vendor_name"
        case status
        case openingHours = "opening_hours"
    }
    
    let id: String
    let name: String
    let status: String
    let openingHours: String
}

struct Checkout: View {
    @State private var vendors = [Vendor]()
    
    var body: some View {
        NavigationStack {
            List(vendors) { vendor in
                VStack(alignment: .leading) {
                    Text(vendor.name)
                        .font(.headline)
                    Text(vendor.status)
                }
            }
            .navigationTitle("Vendors")
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

/*
 struct Checkout: View {
     @State private var messages = [Message]()
     
     var body: some View {
         NavigationStack {
             List(messages) { message in
                 VStack(alignment: .leading) {
                     Text(message.from)
                         .font(.headline)
                     Text(message.text)
                 }
             }
             .navigationTitle("Inbox")
         }
         .task {
             do {
                 let url = URL(string: "https://www.hackingwithswift.com/samples/messages.json")!
                 let (data, _) = try await URLSession.shared.data(from: url)
                 messages = try JSONDecoder().decode([Message].self, from: data)
             } catch {
                 messages = []
             }
         }
     }
 }
 */

struct Checkout_Previews: PreviewProvider {
    static var previews: some View {
        Checkout()
    }
}

struct Joke: Codable {
    let value: String
}

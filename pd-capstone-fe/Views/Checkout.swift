//
//  Checkout.swift
//  pd-capstone-fe
//
//  Created by Nazrin Shah on 21/3/23.
//

import SwiftUI

struct Checkout: View {
    @EnvironmentObject var modelData: ModelData
    @State private var newOrder: Order = Order()

    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Text("OrderId: \(newOrder.id!)")
            }
            CartList(cart: newOrder.items!)
            Footer(cart: newOrder.items!)
            HStack {
                Text("Total")
                    .font(.headline)
                Spacer()
                Text("$\(newOrder.deliveryFee! + newOrder.platformFee! + newOrder.subtotal!, specifier: "%.2f")")
                    .font(.headline)
            }
            .padding()
        }
        .task {
            await placeOrder()
        }
    }
    
    func placeOrder() async {
        guard let encoded = try? JSONEncoder().encode(Order(items: modelData.order, subtotal: modelData.subtotal, platformFee: modelData.platformFee, deliveryFee: modelData.deliveryFee)) else {
            print("Failed to encode order")
            return
        }
        
        let url = URL(string: "http://localhost:8080/createorder")!
        var request = URLRequest(url: url)
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpMethod = "POST"
        
        do {
            let (data, _) = try await URLSession.shared.upload(for: request, from: encoded)
            newOrder = try JSONDecoder().decode(Order.self, from: data)
        } catch {
            print("Checkout failed")
            newOrder = load("mockOrder.json")
        }
    }

}

struct Checkout_Previews: PreviewProvider {
    static var previews: some View {
        Checkout()
            .environmentObject(ModelData())
    }
}

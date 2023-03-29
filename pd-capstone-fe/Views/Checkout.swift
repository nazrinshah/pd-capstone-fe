//
//  Checkout.swift
//  pd-capstone-fe
//
//  Created by Nazrin Shah on 21/3/23.
//

import SwiftUI

struct Checkout: View {
    @EnvironmentObject var modelData: ModelData

    var body: some View {
        Text("hello")
            .task {
                let _ = print("asfhoiashfssahsa")
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
            let (_, _) = try await URLSession.shared.upload(for: request, from: encoded)
            
        } catch {
            print("Checkout failed")
        }
    }

}

struct Checkout_Previews: PreviewProvider {
    static var previews: some View {
        Checkout()
            .environmentObject(ModelData())
    }
}

//
//  Footer.swift
//  pd-capstone-fe
//
//  Created by Nazrin Shah on 28/3/23.
//

import SwiftUI

struct Footer: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        VStack {
            HStack {
                Text("Subtotal")
                Spacer()
                
                var total = modelData.order.reduce(0.0, {$0 + $1.price * Float64($1.quantity)})
                let _ = print(modelData.order)
                Text("$\(total, specifier: "%.2f")")
            }
            HStack {
                Text("Platform fee")
                Spacer()
                Text("$0.40")
            }
            HStack {
                Text("Delivery fee")
                Spacer()
                Text("$3.00")
            }
        }
        .padding()
    }
}

struct Footer_Previews: PreviewProvider {
    static var previews: some View {
        Footer()
            .environmentObject(ModelData())
    }
}

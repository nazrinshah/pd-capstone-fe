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
            VStack {
                HStack {
                    Text("Subtotal")
                        .foregroundColor(.seriousgray)
                    Spacer()
                    
                    Text("$\(modelData.order.reduce(0.0, {$0 + $1.price! * Float64($1.quantity!)}), specifier: "%.2f")")
                        .foregroundColor(.seriousgray)
                }
                HStack {
                    Text("Platform fee")
                        .foregroundColor(.seriousgray)
                    Spacer()
                    Text("$0.40")
                        .foregroundColor(.seriousgray)
                }
                HStack {
                    Text("Delivery fee")
                        .foregroundColor(.seriousgray)
                    Spacer()
                    Text("$3.00")
                        .foregroundColor(.seriousgray)
                }
            }
            .padding()
            NavigationLink(destination: Checkout()) {
                Text("Make Payment")

            }
            .accentColor(Color("cerisered"))
        }
    }
}

struct Footer_Previews: PreviewProvider {
    static var previews: some View {
        Footer()
            .environmentObject(ModelData())
    }
}

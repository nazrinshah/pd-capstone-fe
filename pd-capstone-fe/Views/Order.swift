//
//  Order.swift
//  pd-capstone-fe
//
//  Created by Nazrin Shah on 22/3/23.
//

import SwiftUI

struct Order: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        NavigationView {
            VStack {
                Header()
                ScrollView {
                    Image("fp-cart-page-rider")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Divider()
                    CartList()
                    Spacer()
                    Banner()
                    Spacer()
                    Divider()
                    Footer()
                }
                NavigationLink(destination: Checkout()) {
                    Text("Make Payment")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 340)
                        .background(Color.cerisered)
                        .cornerRadius(8)
                }
            }
        }
    }
}

struct Order_Previews: PreviewProvider {
    static var previews: some View {
        Order()
            .environmentObject(ModelData())
    }
}

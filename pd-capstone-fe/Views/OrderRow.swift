//
//  OrderRow.swift
//  pd-capstone-fe
//
//  Created by Nazrin Shah on 20/3/23.
//

import SwiftUI

struct OrderRow: View {
    //var orderItem: OrderItem
    
    var body: some View {
        HStack {
            Text("Qty: 1")
            Image("fp-food-kfc-2pcs")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(8)
                .padding()
            VStack(alignment: .leading) {
                Text("2 pcs Chicken Meal")
                    .font(.headline)
                Text("2 pcs Chicken, 3 pcs nugget")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            .frame(maxWidth: 300)
            Spacer()
            Text("$12.60")
        }
        .frame(maxWidth: .infinity, maxHeight: 80)
    }
}

struct OrderRow_Previews: PreviewProvider {
    static var previews: some View {
        OrderRow()
    }
}

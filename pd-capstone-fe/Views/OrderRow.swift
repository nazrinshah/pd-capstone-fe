//
//  OrderRow.swift
//  pd-capstone-fe
//
//  Created by Nazrin Shah on 20/3/23.
//

import SwiftUI

struct OrderRow: View {
    var orderItem: OrderItem
    
    var body: some View {
        HStack {
            Text("Qty: \(orderItem.quantity)")
            orderItem.image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(8)
                .padding()
                .frame(maxWidth: 300)
            VStack(alignment: .leading) {
                Text(orderItem.name)
                    .font(.headline)
                    .lineLimit(1)
                Text(orderItem.description)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .lineLimit(1)
            }
            Spacer()
            Text("$\(orderItem.price*Float64(orderItem.quantity), specifier: "%.2f")")
        }
        .frame(maxWidth: .infinity, maxHeight: 80)
        .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
    }
}

struct OrderRow_Previews: PreviewProvider {
    static var previews: some View {
        OrderRow(orderItem: order[0])
    }
}

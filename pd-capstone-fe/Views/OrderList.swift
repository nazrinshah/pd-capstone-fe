//
//  OrderList.swift
//  pd-capstone-fe
//
//  Created by Nazrin Shah on 20/3/23.
//

import SwiftUI

struct OrderList: View {
   // var order: [OrderItem]
    var body: some View {
        List{
            // TODO: use dynamic data
            ForEach(order, id: \.self) { item in
                // insert navigation? no
                
                OrderRow(orderItem: item)
            }
        }
        .edgesIgnoringSafeArea(.all)
        .listStyle(PlainListStyle())
    }
}

struct OrderList_Previews: PreviewProvider {
    static var previews: some View {
        OrderList()
    }
}

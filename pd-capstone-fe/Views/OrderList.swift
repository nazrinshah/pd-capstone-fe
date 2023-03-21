//
//  OrderList.swift
//  pd-capstone-fe
//
//  Created by Nazrin Shah on 20/3/23.
//

import SwiftUI

struct OrderList: View {
    var body: some View {
        ScrollView {
            ForEach(order, id: \.self) { item in
                OrderRow(orderItem: item)
            }
        }
    }
}

struct OrderList_Previews: PreviewProvider {
    static var previews: some View {
        OrderList()
    }
}

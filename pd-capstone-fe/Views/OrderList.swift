//
//  OrderList.swift
//  pd-capstone-fe
//
//  Created by Nazrin Shah on 20/3/23.
//

import SwiftUI

struct OrderList: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        ScrollView {
            ForEach(modelData.order) { item in
                OrderRow(orderItem: item)
            }
        }
    }
}

struct OrderList_Previews: PreviewProvider {
    static var previews: some View {
        OrderList()
            .environmentObject(ModelData())
    }
}

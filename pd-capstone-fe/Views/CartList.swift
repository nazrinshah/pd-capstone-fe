//
//  CartList.swift
//  pd-capstone-fe
//
//  Created by Nazrin Shah on 20/3/23.
//

import SwiftUI

struct CartList: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        ScrollView {
            ForEach(modelData.order) { item in
                CartRow(orderItem: item)
                Divider()
            }
        }
    }
}

struct CartList_Previews: PreviewProvider {
    static var previews: some View {
        CartList()
            .environmentObject(ModelData())
    }
}

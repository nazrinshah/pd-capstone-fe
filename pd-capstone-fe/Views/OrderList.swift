//
//  OrderList.swift
//  pd-capstone-fe
//
//  Created by Nazrin Shah on 20/3/23.
//

import SwiftUI

struct OrderList: View {
    var body: some View {
        List{
            ForEach(1...3, id: \.self) { _ in
                // insert navigation? no
                
                OrderRow()
            }
        }
    }
}

struct OrderList_Previews: PreviewProvider {
    static var previews: some View {
        OrderList()
    }
}

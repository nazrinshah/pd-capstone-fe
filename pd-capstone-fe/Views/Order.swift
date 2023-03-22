//
//  Order.swift
//  pd-capstone-fe
//
//  Created by Nazrin Shah on 22/3/23.
//

import SwiftUI

struct Order: View {
    var body: some View {
        NavigationView {
            ScrollView {
                Header()
                OrderList()
                Divider()
                Banner()
                Swimlane()
            }
        }
    }
}

struct Order_Previews: PreviewProvider {
    static var previews: some View {
        Order()
    }
}

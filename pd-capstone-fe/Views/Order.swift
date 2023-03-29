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
                    CartList()
                    Spacer()
                    Banner()
                    Spacer()
                    Divider()
                    Footer()
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

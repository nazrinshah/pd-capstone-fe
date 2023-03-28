//
//  Footer.swift
//  pd-capstone-fe
//
//  Created by Nazrin Shah on 28/3/23.
//

import SwiftUI

struct Footer: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        VStack {
            HStack {
                Text("Subtotal")
                Spacer()
                Text("$12.60")
            }
            HStack {
                Text("Platform fee")
                Spacer()
                Text("$0.40")
            }
            HStack {
                Text("Delivery fee")
                Spacer()
                Text("$3.00")
            }
        }
        .padding()
    }
}

struct Footer_Previews: PreviewProvider {
    static var previews: some View {
        Footer()
            .environmentObject(ModelData())
    }
}

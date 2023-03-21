//
//  ContentView.swift
//  pd-capstone-fe
//
//  Created by Nazrin Shah on 20/3/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            Header()
            
            OrderList()
            Divider()
            
            VStack(alignment: .leading) {
                Text("Bubble Tea? Bubble Tea...")
                    .font(.title2)
                Text("(Beta) Complete your meal, no additional delivery charge")
                    .font(.subheadline)
            }
            Swimlane()
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

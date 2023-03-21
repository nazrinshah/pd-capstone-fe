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
            Banner()
            Swimlane()
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  ContentView.swift
//  pd-capstone-fe
//
//  Created by Nazrin Shah on 20/3/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                TextField("Search", text: .constant(""))
                    .padding(8)
                    .background(Color(.systemGray5))
                    .cornerRadius(8)
                Button(action: {}) {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.white)
                        .padding(8)
                        .background(Color.blue) // TODO: fix color
                        .cornerRadius(8)
                }
            }
            .padding()
            OrderList()
            
            // TODO: add footer stuff
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

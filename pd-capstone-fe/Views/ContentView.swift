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
            
            ForEach(1...3, id: \.self) { _ in
                // insert navigation? no
                
                OrderRow()
            }
            Divider()
            Swimlane()
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  Header.swift
//  pd-capstone-fe
//
//  Created by Nazrin Shah on 21/3/23.
//

import SwiftUI

struct Header: View {
    var body: some View {
        HStack {
            TextField("Search", text: .constant(""))
                .padding(8)
                .background(Color(.systemGray5))
                .cornerRadius(8)
            Button(action: {}) {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.white)
                    .padding(8)
                    .background(Color.cerisered) // TODO: fix color
                    .cornerRadius(8)
            }
        }.padding()
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header()
    }
}

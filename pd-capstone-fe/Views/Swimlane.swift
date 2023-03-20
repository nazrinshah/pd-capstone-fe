//
//  Swimlane.swift
//  pd-capstone-fe
//
//  Created by Nazrin Shah on 21/3/23.
//

import SwiftUI

struct Swimlane: View {
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack {
                ForEach(drinks, id: \.self) { drink in
                    // insert navigation? no
                    SwimlaneColumn(drink: drink)
                }
            }
        }
    }
}

struct Swimlane_Previews: PreviewProvider {
    static var previews: some View {
        Swimlane()
    }
}

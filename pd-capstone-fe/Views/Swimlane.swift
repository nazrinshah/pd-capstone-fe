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
                ForEach(1...3, id: \.self) { _ in
                    // insert navigation? no
                    
                    SwimlaneColumn()
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

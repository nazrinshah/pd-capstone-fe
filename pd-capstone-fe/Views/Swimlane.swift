//
//  Swimlane.swift
//  pd-capstone-fe
//
//  Created by Nazrin Shah on 21/3/23.
//

import SwiftUI

struct Swimlane: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack {
                ForEach(modelData.drinks, id: \.self) { drink in
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
            .environmentObject(ModelData())
    }
}

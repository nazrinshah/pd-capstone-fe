//
//  Banner.swift
//  pd-capstone-fe
//
//  Created by Nazrin Shah on 21/3/23.
//

import SwiftUI

struct Banner: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Bubble Tea? Bubble Tea...")
                .font(.title2)
                .padding(.horizontal, 8)
            Text("(Beta) Complete your meal, no additional delivery charge")
                .font(.subheadline)
                .padding(.horizontal, 8)
            Swimlane()
        }
    }
}

struct Banner_Previews: PreviewProvider {
    static var previews: some View {
        Banner()
            .environmentObject(ModelData())
    }
}

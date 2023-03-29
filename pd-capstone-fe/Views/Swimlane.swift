//
//  Swimlane.swift
//  pd-capstone-fe
//
//  Created by Nazrin Shah on 21/3/23.
//

import SwiftUI

struct Swimlane: View {
    @EnvironmentObject var modelData: ModelData
    @State private var drinks = [Dish]()
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack {
                ForEach(drinks) { drink in
                    SwimlaneColumn(drink: drink.toSwimlaneItem())
                }
            }
            .task {
                do {
                    let url = URL(string:"http://localhost:8080/drinks/1")!
                    let (data, _) = try await URLSession.shared.data(from: url)
                    drinks = try JSONDecoder().decode([Dish].self, from: data)
                } catch {
                    let _ = print("cannot get drinks")
                    drinks = load("drinksApiMock.json")
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

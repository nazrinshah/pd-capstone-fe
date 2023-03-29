//
//  SwimlaneColumn.swift
//  pd-capstone-fe
//
//  Created by Nazrin Shah on 21/3/23.
//

import SwiftUI

struct SwimlaneColumn: View {
    var drink: SwimlaneItem
    
    var body: some View {
            VStack {
                drink.image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(8)
                    .frame(maxHeight: 200)
                HStack {
                    VStack(alignment: .leading) {
                        Text("$\(drink.price, specifier: "%.2f")")
                            .font(.headline)
                        Text("\(drink.name)")
                            .font(.subheadline)
                            .lineLimit(1)
                    }
                    Spacer()
                    NavigationLink(destination: AddToCart(dishId: drink.id)) {
                        Image(systemName: "plus")
                            .resizable()
                            .foregroundColor(.white)
                            .background(.black)
                            .clipShape(Circle())
                            .frame(width: 25, height: 25)
                            .overlay {
                                Circle().stroke(.black, lineWidth: 10)
                            }
                    }
                }
            }
            .frame(maxWidth: 150, maxHeight: 150)
            .padding()
    }
}

struct SwimlaneColumn_Previews: PreviewProvider {
    static var previews: some View {
        SwimlaneColumn(drink: ModelData().drinks[1])
    }
}

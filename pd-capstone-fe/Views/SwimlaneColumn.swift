//
//  SwimlaneColumn.swift
//  pd-capstone-fe
//
//  Created by Nazrin Shah on 21/3/23.
//

import SwiftUI

struct SwimlaneColumn: View {
    var body: some View {
        VStack {
            Image("fp-drink-gong-cha-pearl-milk-tea")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(8)
                .frame(maxHeight: 200)
            HStack {
                VStack(alignment: .leading) {
                    Text("$5.30")
                        .font(.headline)
                    Text("Pearl Milk tea")
                        .font(.subheadline)
                }
                Spacer()
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
        .frame(maxWidth: 150, maxHeight: 150)
        .padding()
    }
}

struct SwimlaneColumn_Previews: PreviewProvider {
    static var previews: some View {
        SwimlaneColumn()
    }
}

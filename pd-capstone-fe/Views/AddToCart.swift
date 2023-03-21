//
//  AddToCart.swift
//  pd-capstone-fe
//
//  Created by Nazrin Shah on 21/3/23.
//

import SwiftUI
import RadioGroup

struct AddToCart: View {
    @State private var selection = 1
    
    var body: some View {
        RadioGroupPicker(selectedIndex: $selection, titles: ["One", "Two", "Three"])
            .fixedSize()
    }
}

struct AddToCart_Previews: PreviewProvider {
    static var previews: some View {
        AddToCart()
    }
}

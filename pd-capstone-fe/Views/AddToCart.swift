//
//  AddToCart.swift
//  pd-capstone-fe
//
//  Created by Nazrin Shah on 21/3/23.
//

import SwiftUI
import RadioGroup

struct AddToCart: View {
    @State private var sugarLevel = 1
    @State private var iceLevel = 1
    
    var body: some View {
        let sugarLevels: [String] = ["Normal", "More Sweet", "Less Sweet"]
        let iceLevels: [String] = ["Normal", "More Ice", "Less Ice", "No Ice"]
        
        VStack(alignment: .leading) {
            VStack {
                Text("Sugar Level")
                    .font(.headline)
                
                RadioGroupPicker(selectedIndex: $sugarLevel, titles: sugarLevels, itemSpacing: UIScreen.main.bounds.size.width-130, isButtonAfterTitle: true)
                    .fixedSize()
            }
            
            Divider()
    
            VStack {
                Text("Ice Level")
                    .font(.headline)
                
                RadioGroupPicker(selectedIndex: $iceLevel, titles: iceLevels, itemSpacing: UIScreen.main.bounds.size.width-110, isButtonAfterTitle: true)
                    .fixedSize()
            }
        }
    }
}

struct AddToCart_Previews: PreviewProvider {
    static var previews: some View {
        AddToCart()
    }
}

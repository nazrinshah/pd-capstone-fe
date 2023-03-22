//
//  RadioGroupComponent.swift
//  pd-capstone-fe
//
//  Created by Nazrin Shah on 22/3/23.
//

import SwiftUI
import RadioGroup

/*
    NOT IN USE yet
 */
struct RadioGroupComponent: View {
    @State private var selection = 1
    
    var body: some View {
        var sugarLevels: [String] = ["Normal", "More Sweet", "Less Sweet"]
        
        VStack(alignment: .leading) {
            Text("Sugar Level")
                .font(.headline)
            
            RadioGroupPicker(selectedIndex: $selection, titles: sugarLevels, isButtonAfterTitle: true)
                .fixedSize()
        }
        
    }
}

struct RadioGroupComponent_Previews: PreviewProvider {
    static var previews: some View {
        RadioGroupComponent()
    }
}

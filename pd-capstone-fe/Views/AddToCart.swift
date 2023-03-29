//
//  AddToCart.swift
//  pd-capstone-fe
//
//  Created by Nazrin Shah on 21/3/23.
//

import SwiftUI
import RadioGroup

struct AddToCart: View {
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var modelData: ModelData
    
    @State var dishId = 0
    @State private var dish = Dish()
    @State private var sugarLevel = 0
    @State private var iceLevel = 0
    
    var body: some View {
        let sugarLevels: [String] = ["Normal", "More Sweet", "Less Sweet"]
        let iceLevels: [String] = ["Normal", "More Ice", "Less Ice", "No Ice"]
        NavigationView {
            VStack {
                ScrollView {
                    dish.image
                        .resizable()
                        .scaledToFit()
                    VStack(alignment: .leading) {
                        VStack {
                            Text("Sugar Level")
                                .font(.headline)
                            
                            RadioGroupPicker(selectedIndex: $sugarLevel, titles: sugarLevels, itemSpacing: UIScreen.main.bounds.size.width-130, isButtonAfterTitle: true)
                                .fixedSize()
                                .accentColor(Color("cerisered"))
                        }
                        
                        Divider()
                
                        VStack {
                            Text("Ice Level")
                                .font(.headline)
                            
                            RadioGroupPicker(selectedIndex: $iceLevel, titles: iceLevels, itemSpacing: UIScreen.main.bounds.size.width-110, isButtonAfterTitle: true)
                                .fixedSize()
                                .accentColor(Color("cerisered"))
                            
                        }
                    }
                }
                .task {
                    do {
                        let url = URL(string: "http://localhost:8080/dish/\(dishId)")!
                        let (data, _) = try await URLSession.shared.data(from: url)
                        dish = try JSONDecoder().decode(Dish.self, from: data)
                    } catch {
                        let _ = print("http://localhost:8080/dish")
                        dish = Dish()
                    }
                }
                Button("Add to Cart") {
                    modelData.order.append(dish.toOrderItem(quantity: 1, remarks: "Sweetness: \(sugarLevels[sugarLevel]), Ice: \(iceLevels[iceLevel])"))
                    print(modelData.order)
                    self.presentationMode.wrappedValue.dismiss()
                }
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .frame(width: 340)
                .background(Color.cerisered)
                .cornerRadius(8)
            }
        }
    }
}

struct AddToCart_Previews: PreviewProvider {
    static var previews: some View {
        AddToCart(dishId: 1)
            .environmentObject(ModelData())
    }
}

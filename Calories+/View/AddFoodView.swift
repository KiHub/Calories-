//
//  AddFoodView.swift
//  Calories+
//
//  Created by  Mr.Ki on 23.08.2022.
//

import SwiftUI

struct AddFoodView: View {
    @Environment (\.managedObjectContext) var managedObjectContext
    @Environment(\.dismiss) var dismiss
    @State private var name = ""
    @State private var calories: Double = 0
    
    var body: some View {
        Form {
            Section {
                TextField("Food", text: $name)
                VStack {
                    Text("Calories: \(Int(calories))")
                    Slider(value: $calories, in: 0...1200, step: 10)
                }
                .padding()
                
                HStack {
                    Spacer()
                    Button("Save") {
                        DataManager().addFood(name: name, calories: calories, context: managedObjectContext)
                        dismiss()
                    }
                    Spacer()
                }
            }
        }
    }
}

struct AddFoodView_Previews: PreviewProvider {
    static var previews: some View {
        AddFoodView()
    }
}

//
//  Calories_App.swift
//  Calories+
//
//  Created by  Mr.Ki on 23.08.2022.
//

import SwiftUI

@main
struct Calories_App: App {
    @StateObject private var dataManager = DataManager()
    
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataManager.container.viewContext)
        }
    }
}

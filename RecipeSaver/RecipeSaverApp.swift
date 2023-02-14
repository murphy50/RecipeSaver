//
//  RecipeSaverApp.swift
//  RecipeSaver
//
//  Created by murphy on 2022-12-23.
//

import SwiftUI

@main
struct RecipeSaverApp: App {
    @StateObject var recipesViewModel = RecipesViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(recipesViewModel)
        }
    }
}

//
//  HomeView.swift
//  RecipeSaver
//
//  Created by murphy on 2022-12-23.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var recipesVM: RecipesViewModel
    
    var body: some View {
        NavigationView {
            ScrollView {
                RecipeList(recipes: recipesVM.recipes)
            }
            .navigationTitle("My Recipes")
        }
        .navigationViewStyle(.stack)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(RecipesViewModel())
    }
}

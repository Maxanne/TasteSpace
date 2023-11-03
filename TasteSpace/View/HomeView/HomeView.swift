//
//  HomeView.swift
//  TasteSpace
//
//  Created by Moyesh Khanal on 11/2/23.
//

import Foundation
import SwiftUI
import Combine

// Main Home screen showing the list of recipes
struct HomeView: View {
    @ObservedObject var viewModel: RecipeViewModel

    var body: some View {
        List(viewModel.recipes) { recipe in
            RecipeCardView(recipe: recipe)
                .onTapGesture {
                    // Navigate to RecipeDetailView
                }
        }
    }
}

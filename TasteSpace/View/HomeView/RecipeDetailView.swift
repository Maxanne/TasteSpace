//
//  RecipeDetailView.swift
//  TasteSpace
//
//  Created by Moyesh Khanal on 11/2/23.
//

import Foundation
import SwiftUI

// Detailed view when a recipe is selected
struct RecipeDetailView: View {
    var recipe: Recipe

    var body: some View {
        VStack {
            Image(recipe.imageUrl)
                .resizable()
                .frame(height: 300)
            
            Text(recipe.title).font(.largeTitle)
            Text(recipe.description).font(.body)
            Spacer()
        }.padding()
    }
}

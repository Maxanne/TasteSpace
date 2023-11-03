//
//  RecipeCardView.swift
//  TasteSpace
//
//  Created by Moyesh Khanal on 11/2/23.
//

import Foundation
import SwiftUI

// Individual recipe card displayed on the Home screen
struct RecipeCardView: View {
    var recipe: Recipe

    var body: some View {
        VStack(alignment: .leading) {
            // Displaying the recipe image
            Image(recipe.imageUrl)
                .resizable()
                .frame(height: 200)
            
            Text(recipe.title).font(.headline)
            Text("Rating: \(recipe.rating)").font(.subheadline)
        }.padding()
    }
}

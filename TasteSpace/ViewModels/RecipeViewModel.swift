//
//  RecipeViewModel.swift
//  TasteSpace
//
//  Created by Moyesh Khanal on 11/2/23.
//

import Foundation
class RecipeViewModel: ObservableObject {
    private var db = Firestore.firestore()
    @Published var recipes: [Recipe] = []

    func fetchRecipes() {
        db.collection("recipes").order(by: "timestamp", descending: true).addSnapshotListener { (snapshot, error) in
            guard let documents = snapshot?.documents else { return }
            self.recipes = documents.compactMap { (queryDocumentSnapshot) -> Recipe? in
                return try? queryDocumentSnapshot.data(as: Recipe.self)
            }
        }
    }
}

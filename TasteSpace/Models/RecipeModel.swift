//
//  RecipeModel.swift
//  TasteSpace
//
//  Created by Moyesh Khanal on 11/2/23.
//

import Foundation
//import FirebaseFirestore

struct Recipe: Identifiable, Codable {
    var id: String?
    var title: String
    var description: String
    var imageUrl: String
    var postedByUserId: String
    var rating: Double
    var timestamp: String // Need to change this to date or timestamp type
}

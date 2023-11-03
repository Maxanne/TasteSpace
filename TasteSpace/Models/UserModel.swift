//
//  UserModel.swift
//  TasteSpace
//
//  Created by Moyesh Khanal on 11/2/23.
//

import Foundation

// Model representing a User
struct AppUser: Identifiable, Codable {
    var id: String?
    var email: String
    var bio: String
    var profileImageURL: String
    var recipesPosted: Int
    var recipesLiked: Int
}

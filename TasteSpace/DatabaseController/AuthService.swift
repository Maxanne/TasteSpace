//
//  DatabaseService.swift
//  TasteSpace
//
//  Created by Moyesh Khanal on 11/2/23.
//

import Foundation
import Firebase
import FirebaseFirestoreSwift

class AuthService: ObservableObject {
    private var db = Firestore.firestore()
    @Published var isSignedIn = false
    @Published var currentUser: AppUser?

    init() {
        Auth.auth().addStateDidChangeListener { (auth, user) in
            if let user = user {
                self.isSignedIn = true
                self.loadUser(userId: user.uid)
            } else {
                self.isSignedIn = false
                self.currentUser = nil
            }
        }
    }
    
    func signUp(email: String, password: String) {
        Auth.auth().createUser(withEmail: email, password: password) { (result, error) in
            if let user = result?.user {
                self.currentUser = AppUser(id: user.uid, email: email, bio: "", profileImageURL: "", recipesPosted: 0, recipesLiked: 0)
            }
        }
    }
    
    func login(email: String, password: String) {
        Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
            // Handle errors appropriately
        }
    }
    
    func logout() {
        try? Auth.auth().signOut()
    }

    private func loadUser(userId: String) {
        db.collection("users").document(userId).getDocument { (snapshot, error) in
            if let data = snapshot?.data() {
                self.currentUser = try? JSONDecoder().decode(AppUser.self, from: JSONSerialization.data(withJSONObject: data, options: []))
            }
        }
    }
}


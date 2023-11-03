//
//  AuthViewModel.swift
//  TasteSpace
//
//  Created by Moyesh Khanal on 11/2/23.
//

import Foundation
class AuthViewModel: ObservableObject {
    private var authService = AuthService()
    
    @Published var currentUser: AppUser?
    @Published var isSignedIn = false
    
    init() {
        authService.$currentUser.assign(to: \.currentUser, on: self).store(in: &cancellables)
        authService.$isSignedIn.assign(to: \.isSignedIn, on: self).store(in: &cancellables)
    }
    
    func signUp(email: String, password: String) {
        authService.signUp(email: email, password: password)
    }
    
    func login(email: String, password: String) {
        authService.login(email: email, password: password)
    }
    
    func logout() {
        authService.logout()
    }
}

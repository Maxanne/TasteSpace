//
//  LoginSigninView.swift
//  TasteSpace
//
//  Created by Moyesh Khanal on 11/2/23.
//

import Foundation
import SwiftUI

// UI for login and signup
struct LoginSignupView: View {
    @ObservedObject var authViewModel: AuthViewModel
    @State private var email: String = ""
    @State private var password: String = ""

    var body: some View {
        Form {
            TextField("Email", text: $email)
            SecureField("Password", text: $password)
            
            Button("Login") {
                authViewModel.login(email: email, password: password)
            }
            
            Button("Sign Up") {
                authViewModel.signUp(email: email, password: password)
            }
        }
    }
}

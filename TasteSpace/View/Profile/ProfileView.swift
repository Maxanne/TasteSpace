//
//  ProfileView.swift
//  TasteSpace
//
//  Created by Moyesh Khanal on 11/2/23.
//

import Foundation
import SwiftUI
import Combine
// UI to display user's profile or login/signup based on authentication status
struct ProfileView: View {
    @ObservedObject var authViewModel: AuthViewModel

    var body: some View {
        if authViewModel.isSignedIn {
            // Display user's profile
        } else {
            LoginSignupView()
        }
    }
}

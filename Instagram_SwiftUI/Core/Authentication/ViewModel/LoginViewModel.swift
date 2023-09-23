//
//  LoginViewModel.swift
//  Instagram_SwiftUI
//
//  Created by Rocky on 2023/09/23.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    func signIn() async throws {
        try await AuthService.shared.login(withEmail: email, password: password)
    }
}

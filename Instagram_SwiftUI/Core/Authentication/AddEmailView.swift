//
//  AddEmailView.swift
//  Instagram_SwiftUI
//
//  Created by Rocky on 2023/09/17.
//

import SwiftUI

struct AddEmailView: View {
    @State private var email = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        SignUpView(title: "Add your email",
                   subtitle: "You'll use this email to sign in to your account",
                   inputPlaceholder: "Email",
                   isSecureField: false,
                   destinationView: AnyView(CreateUsernameView()))
    }
}

struct AddEmailView_Previews: PreviewProvider {
    static var previews: some View {
        AddEmailView()
    }
}

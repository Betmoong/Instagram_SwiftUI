//
//  CreatePasswordView.swift
//  Instagram_SwiftUI
//
//  Created by Rocky on 2023/09/17.
//

import SwiftUI

struct CreatePasswordView: View {
    @State private var password = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        SignUpView(title: "Create a password",
                   subtitle: "Your password must be at least 6 characters in length",
                   inputPlaceholder: "Password",
                   isSecureField: true,
                   destinationView: AnyView(CompleteSignUpView())
        )
    }
}

struct CreatePasswordView_Previews: PreviewProvider {
    static var previews: some View {
        CreatePasswordView()
    }
}

//
//  CreateUsernameView.swift
//  Instagram_SwiftUI
//
//  Created by Rocky on 2023/09/17.
//

import SwiftUI

struct CreateUsernameView: View {
    @State private var username = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        SignUpView(title: "Create username",
                   subtitle: "Pick a username for your new account. You can always change it later",
                   inputPlaceholder: "Username",
                   isSecureField: false,
                   destinationView: AnyView(CreatePasswordView()))
    }
}

struct CreateUsernameView_Previews: PreviewProvider {
    static var previews: some View {
        CreateUsernameView()
    }
}

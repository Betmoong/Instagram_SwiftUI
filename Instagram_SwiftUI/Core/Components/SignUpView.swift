//
//  SignUpView.swift
//  Instagram_SwiftUI
//
//  Created by Rocky on 2023/09/17.
//

import SwiftUI

struct SignUpView: View {
    var title: String
    var subtitle: String
    var inputPlaceholder: String
    var isSecureField: Bool = false
    @State private var inputValue: String = ""
    @Environment(\.dismiss) var dismiss
    
    var destinationView: AnyView?
    
    var body: some View {
        VStack(spacing: 12) {
            TitleAndSubtitleView(title: title, subtitle: subtitle)
            
            if isSecureField {
                SecureField(inputPlaceholder, text: $inputValue)
                    .textInputAutocapitalization(.never)
                    .modifier(IGTextFieldModifier())
                    .padding(.top)
            } else {
                TextField(inputPlaceholder, text: $inputValue)
                    .textInputAutocapitalization(.never)
                    .modifier(IGTextFieldModifier())
                    .padding(.top)
            }
            
            if let destination = destinationView {
                NavigationLink(destination: destination) {
                    NextButton()
                }.padding(.vertical)
                
            } else {
                Button {
                    print("Complete sign up")
                } label: {
                    NextButton()
                }
                .padding(.vertical)
            }
            
            Spacer()
        }
        .navigationBarBackButtonHidden()
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Image(systemName: "chevron.left")
                    .imageScale(.large)
                    .onTapGesture {
                        self.dismiss()
                    }
            }
        }
    }
}

struct TitleAndSubtitleView: View {
    var title: String
    var subtitle: String
    
    var body: some View {
        VStack(spacing: 12) {
            Text(self.title)
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
            
            Text(self.subtitle)
                .font(.footnote)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
        }
    }
}

struct NextButton: View {
    var body: some View {
        Text("Next")
            .font(.subheadline)
            .fontWeight(.semibold)
            .foregroundColor(.white)
            .frame(width: 360, height: 44)
            .background(Color(.systemBlue))
            .cornerRadius(10)
    }
}

struct NavigationBackButton: View {
    var dismiss: () -> Void
    
    var body: some View {
        Image(systemName: "chevron.left")
            .imageScale(.large)
            .onTapGesture {
                self.dismiss()
            }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            SignUpView(
                title: "Add your email",
                subtitle: "You'll use this email to sign in to your account",
                inputPlaceholder: "Email",
                destinationView: AnyView(SignUpView(
                    title: "Create username",
                    subtitle: "Pick a username for your new account. You can always change it later",
                    inputPlaceholder: "Username",
                    destinationView: AnyView(SignUpView(
                        title: "Create a password",
                        subtitle: "Your password must be at least 6 characters in length",
                        inputPlaceholder: "Password",
                        isSecureField: true
                    ))
                ))
            )
        }
    }
}

//
//  RegisterView.swift
//  ToDoList
//
//  Created by Owner on 5/13/25.
//

import SwiftUI

struct RegisterView: View {

    @StateObject var viewModel = RegisterViewViewModel()
    
    var body: some View {
        VStack {
            // Header
            HeaderView(title: "Register", subtitle: "Join Today!", angle: -15, background: .mint)
            
            Form {
                TextField("Full Name", text: $viewModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                
                TextField("Email Address", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                
                TLButton(title: "Create an Account", background: .mint) {
                    // Attempt Registration
                    viewModel.register()
                }
            }
            .offset(y: -50)
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}

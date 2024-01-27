//
//  LoginView.swift
//  ToDoList
//
//  Created by Utkarsh Arora on 21/01/24.
//

import SwiftUI
 
struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    var body: some View {
        
        NavigationView {
            VStack {
                // Header
                HeaderView(title: "To Do List", subtitle: "Get things done", angle: 15, background: .pink)
            
                // Login Form 
                Form {
                    if(!viewModel.errorMessage.isEmpty) {
                        Text(viewModel.errorMessage)
                            .foregroundStyle(.red)
                    }
                    
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)  
                    SecureField("Pasword", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    ButtonView(
                        title: "Log In",
                        background: .blue
                    ) {
                        //Attempt log in action
                        viewModel.login()
                        
                    }
                    .padding()  
                }
                .offset(y: -50)
                
                // Create Account
                VStack{
                    Text("New around here?")
                    
                    NavigationLink("Create an Account", destination: RegisterView())
                }
                .padding(.bottom, 50)
                
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}

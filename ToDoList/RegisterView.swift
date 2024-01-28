//
//  RegisterView.swift
//  ToDoList
//
//  Created by Utkarsh Arora on 21/01/24.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewViewModel()
    
    var body: some View {
        VStack {
            // Header
            HeaderView(title: "Register", subtitle: "Start organising todos", angle: -15, background: .orange)
            
            Form {
                TextField("Full Name", text: $viewModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                
                TextField("Email Address", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                
                SecureField("Pasword", text:$viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                ButtonView(
                    title: "Register Now",
                    background: .green
                ){
                    //Action Registration
                    viewModel.register()
                }
                .padding()
            }
            .offset(y: -50)
        Spacer()
        }
        
    }
}

#Preview {
    RegisterView()
}

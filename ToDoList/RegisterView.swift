//
//  RegisterView.swift
//  ToDoList
//
//  Created by Utkarsh Arora on 21/01/24.
//

import SwiftUI

struct RegisterView: View {
    @State var name = ""
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack {
            // Header
            HeaderView(title: "Register", subtitle: "Start organising todos", angle: -15, background: .orange)
            
            Form {
                TextField("Full Name", text: $name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                
                TextField("Email Address", text: $email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                
                SecureField("Pasword", text:$password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                ButtonView(
                    title: "Register Now",
                    background: .green
                ){
                    //Action Registration
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

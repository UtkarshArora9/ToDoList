//
//  ButtonView.swift
//  ToDoList
//
//  Created by Utkarsh Arora on 21/01/24.
//

import SwiftUI

struct ButtonView: View {
    let title : String
    let background: Color
    let action: () -> Void
    var body: some View {
        Button {
            // Action
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(Color/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                
                Text(title)
                    .foregroundColor(.white)
                    .bold()
            }
        }
    }
}

#Preview {
    ButtonView(title: "Title", background: .blue){
         // Actio n
    }
}

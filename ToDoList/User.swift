//
//  User.swift
//  ToDoList
//
//  Created by Utkarsh Arora on 21/01/24.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}

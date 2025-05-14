//
//  User.swift
//  ToDoList
//
//  Created by Owner on 5/13/25.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}

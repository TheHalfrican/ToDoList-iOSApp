//
//  RegisterViewViewModel.swift
//  ToDoList
//
//  Created by Owner on 5/13/25.
//

import Foundation

class RegisterViewViewModel: ObservableObject {
    
    @Published var name = ""
    @Published var email = ""
    @Published var password = ""
    
    init() {}
}

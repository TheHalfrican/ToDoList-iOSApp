//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Owner on 5/13/25.
//

import SwiftUI
import FirebaseCore

@main
struct ToDoListApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}

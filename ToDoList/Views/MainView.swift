//
//  ContentView.swift
//  ToDoList
//
//  Created by Owner on 5/13/25.
//

import SwiftUI

struct MainView: View {
    
    @StateObject var viewModel = MainViewViewModel()
    
    var body: some View {
        if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
            // signed in
            ToDoListView()
        } else {
            // Log in view
            LoginView()
        }
    }
}

#Preview {
    MainView()
}

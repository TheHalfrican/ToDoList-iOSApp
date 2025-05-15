//
//  ToDoListViewViewModel.swift
//  ToDoList
//
//  Created by Owner on 5/13/25.
//

import Foundation
import FirebaseFirestore

class ToDoListViewViewModel: ObservableObject {
    @Published var showingNewItemView = false

    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    
    /// Delete
    /// - Paramter id: Item id to delete
    func delete(id: String) {
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
}

//
//  ToDoListItemView.swift
//  ToDoList
//
//  Created by Owner on 5/13/25.
//

import SwiftUI

struct ToDoListItemView: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    @StateObject var viewModel = ProfileViewViewModel()
    
    let item: ToDoListItem
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(item.title)
                    .font(.body)
                Text("\(Date(timeIntervalSince1970: item.dueDate).formatted(date: .abbreviated, time: .shortened))")
                    .font(.footnote)
                    .foregroundColor(Color(.secondaryLabel))
            }
            Spacer()
            
            Button {
                viewModel.toggleCheckmark(item: item)
            } label: {
                Image(systemName: item.isDone ? "checkmark.circle.fill" : "circle")
                    .foregroundColor(colorScheme == .dark ? .mint : .indigo)
            }
        }
    }
}

#Preview {
    ToDoListItemView(item: .init(id: "123", title: "PeePee PooPoo", dueDate: Date().timeIntervalSince1970, createdDate: Date().timeIntervalSince1970, isDone: true))
}

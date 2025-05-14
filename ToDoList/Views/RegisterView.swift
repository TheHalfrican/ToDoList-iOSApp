//
//  RegisterView.swift
//  ToDoList
//
//  Created by Owner on 5/13/25.
//

import SwiftUI

struct RegisterView: View {
    var body: some View {
        VStack {
            // Header
            HeaderView(title: "Register", subtitle: "Join Today!", angle: -15, background: .mint)
            
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}

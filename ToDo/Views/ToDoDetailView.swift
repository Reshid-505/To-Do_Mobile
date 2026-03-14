//
//  ToDoDetailView.swift
//  ToDo
//
//  Created by Reshid Huseynov on 14.03.2026.
//

import SwiftUI

struct ToDoDetailView: View {
    var todo: ToDo
    
    var body: some View {
        Text(todo.text) 
    }
}

#Preview {
//    ToDoDetailView()
}

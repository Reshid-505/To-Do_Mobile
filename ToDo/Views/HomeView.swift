//
//  HomeView.swift
//  ToDo
//
//  Created by Reshid Huseynov on 08.03.2026.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var vm: ToDoViewModel;
    var body: some View {
        List{
            ForEach(vm.toDos){ todo in
                Text(todo.text)
            }
            .onDelete { IndexSet in
                vm.handleDeleteToDo(idx: IndexSet)
            }
        }
        
    }
}

#Preview {
//    HomeView()
}

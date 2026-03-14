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
        NavigationStack{
            List{
                ForEach(vm.toDos){ todo in
                    NavigationLink(destination: ToDoDetailView(todo: todo)){
                        Text(todo.text)                        
                    }
                    .navigationLinkIndicatorVisibility(.hidden)
                }
                .onDelete { IndexSet in
                    vm.handleDeleteToDo(idx: IndexSet)
                }
            }
        }
        
    }
}

#Preview {
//    HomeView()
}

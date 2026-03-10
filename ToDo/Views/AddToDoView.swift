//
//  AddToDoView.swift
//  ToDo
//
//  Created by Reshid Huseynov on 08.03.2026.
//

import SwiftUI

struct AddToDoView: View {
    @ObservedObject var vm: ToDoViewModel;
    @State var toDoText: String = "";
    var body: some View {
        Form{
            Section{
                TextField("To do text", text: $toDoText)
            }
            
            Section{
                Button{
                    if(toDoText.trimmingCharacters(in: .whitespacesAndNewlines).count>0){
                        vm.handeAddToDo(text: toDoText.trimmingCharacters(in: .whitespacesAndNewlines))
                        toDoText = "";
                    }
                }label:{
                    Label("Add", systemImage: "plus")
                }
            }
            
        }
    }
}

#Preview {
//    AddToDoView()
}

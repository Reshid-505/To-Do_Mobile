//
//  ToDoViewModel.swift
//  ToDo
//
//  Created by Reshid Huseynov on 10.03.2026.
//

import Foundation
import Combine
import SwiftUI

final class ToDoViewModel: ObservableObject {
    @Published var toDos: [ToDo] = [
        ToDo(text: "To do 1"),
        ToDo(text: "To do 2"),
        ToDo(text: "To do 3"),
        ToDo(text: "To do 4"),
        ToDo(text: "To do 5")
    ]
    
    func handeAddToDo(text: String) {
        let newToDo: ToDo = ToDo(text: text)
        toDos.append(newToDo)
    }
    
    func handleDeleteToDo(idx: IndexSet) {
        toDos.remove(atOffsets: idx)
    }
}

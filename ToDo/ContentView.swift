//
//  ContentView.swift
//  ToDo
//
//  Created by Reshid Huseynov on 08.03.2026.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ToDoViewModel()
    var body: some View {
        TabView{
            HomeView(vm:viewModel)
                .tabItem {
                    Text("Home")
                    Image(systemName: "house")
                }
            AddToDoView(vm:viewModel)
                .tabItem {
                    Text("Add Todo")
                    Image(systemName: "plus")
                }
        }
//        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
    }
}

#Preview {
    ContentView()
}

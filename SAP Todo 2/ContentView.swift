//
//  ContentView.swift
//  SAP Todo 2
//
//  Created by LIM YEE SIN RACHEL stu on 2/7/22.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var todoManager = TodoManager()
    
    var body: some View {
        
        TabView {
            MainTodoListView(todoManager: todoManager)
                .tabItem {
                    Label("Todos", systemImage: "checkmark.circle.fill")
                }
            Text("\(todoManager.todos.count) undone todos")
                .tabItem {
                    Label("Number of undone todos", systemImage: "person")
                }
        }
    }
}

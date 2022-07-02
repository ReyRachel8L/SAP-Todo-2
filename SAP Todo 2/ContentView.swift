//
//  ContentView.swift
//  SAP Todo 2
//
//  Created by LIM YEE SIN RACHEL stu on 2/7/22.
//

import SwiftUI

struct ContentView: View {
    
    var todos = [
        Todo(title: "Work on my skill issues"),
        Todo(title: "Watch some Paw Patrol episodes"),
        Todo(title: "Gotten hot chocolate", isCompleted: true)
    ]
    
    var body: some View {
        NavigationView {
            List(todos) { todo in
                Text(todo.title)
            }
            .navigationTitle("TD list")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

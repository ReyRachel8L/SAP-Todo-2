//
//  ContentView.swift
//  SAP Todo 2
//
//  Created by LIM YEE SIN RACHEL stu on 2/7/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var todos = [
        Todo(title: "Work on Project SF"),
        Todo(title: "Do Science HW 1 / 2"),
        Todo(title: "Clean naughty's cage", isCompleted: true)
    ]
    
    @State var isSheetGiven = false
    @State var isSheetShown = false
    // @AppStorage("username") var name = ""
    
    var body: some View {
        NavigationView {
            List {
                // TextField("Enter your name", text: $name)
                ForEach($todos) { $todo in
                    NavigationLink {
                        TodoDetailView(todo: $todo)
                    } label: {
                        HStack {
                            Image(systemName: todo.isCompleted ? "checkmark.shield.fill" : "shield")
                            Text(todo.title)
                                .strikethrough(todo.isCompleted)
                                .foregroundColor(todo.isCompleted ? .green : .red)
                        }
                    }
                }
                
                .onDelete { indexSet in
                    todos.remove(atOffsets: indexSet)
                }
                .onMove { oldOffset, newOffset in
                    todos.move(fromOffsets: oldOffset, toOffset: newOffset)
                }
            }
            .navigationTitle("Paw Patrol")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        isSheetGiven = true
                    } label: {
                        Image(systemName: "plus")
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        isSheetShown = true
                    } label: {
                        Image(systemName: "")
                    }
                }
            }
        }
        .sheet(isPresented: $isSheetGiven) {
            NewTodoView(todos: $todos)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

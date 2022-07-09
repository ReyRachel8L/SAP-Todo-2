//
//  NewTodoView.swift
//  SAP Todo 2
//
//  Created by LIM YEE SIN RACHEL stu on 2/7/22.
//

import SwiftUI

struct NewTodoView: View {
    
    @State var todoTitle = ""
    @Binding var todos: [Todo]
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Form {
            TextField("Enter todo name", text: $todoTitle)
            
            Button("Save todo") {
                // This is "do-smth" code to save the todo
                let todo = Todo(title: todoTitle)
                todos.append(todo)
                dismiss()
                // presentationMode.wrappedValue.dismiss()
            }
        }
    }
}

struct NewTodoView_Previews: PreviewProvider {
    static var previews: some View {
        NewTodoView(todos: .constant([]))
    }
}

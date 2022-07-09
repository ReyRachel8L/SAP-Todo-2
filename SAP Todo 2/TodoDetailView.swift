//
//  TodoDetailView.swift
//  SAP Todo 2
//
//  Created by LIM YEE SIN RACHEL stu on 2/7/22.
//

import SwiftUI

struct TodoDetailView: View {
    
    @Binding var todo: Todo
    
    var body: some View {
        VStack {
            TextField("Enter your todo title here", text: $todo.title)
                .textFieldStyle(.roundedBorder)
                .padding()
            Button {
                todo.isCompleted.toggle()
            } label: {
                Text("Mark as \(todo.isCompleted ? "incomplete" : "complete")")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(todo.isCompleted ? .green : .red)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding()
            }
            Spacer()
        }
    }
}

struct TodoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TodoDetailView(todo: .constant(Todo(title: "Get hot chocolate")))
    }
}

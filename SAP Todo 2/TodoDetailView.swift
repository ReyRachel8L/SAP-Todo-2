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
            TextField("Placeholder", text: $todo.title)
                .textFieldStyle(.roundedBorder)
                .padding()
            Button {
                print("Tapped")
            } label: {
                Text("Mark as \(todo.isCompleted ? "completed" : "incompleted")")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(.teal)
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
        TodoDetailView(todo: .constant(Todo(title: "Not get hot chocolate")))
    }
}

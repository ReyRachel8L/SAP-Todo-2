//
//  Todo.swift
//  SAP Todo 2
//
//  Created by LIM YEE SIN RACHEL stu on 2/7/22.
//

import Foundation

struct Todo: Identifiable, Codable {
    
    var id = UUID()        // Universally unique id
    var title: String
    var isCompleted = false
    
}

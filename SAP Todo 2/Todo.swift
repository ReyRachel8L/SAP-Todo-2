//
//  Todo.swift
//  SAP Todo 2
//
//  Created by LIM YEE SIN RACHEL stu on 2/7/22.
//

import Foundation

struct Todo: Identifiable, Codable {
    
    var id = UUID()
    var title: String
    var isCompleted = false
    
}

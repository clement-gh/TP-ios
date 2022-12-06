//
//  todo.swift
//  TP-todolist
//
//  Created by Clement Ghys on 07/11/2022.
//

import Foundation
    
class Task {

    let taskName: String
    let taskDescription: String
   var isDone: Bool
    var dueDate: Date
    init(_name: String, _description: String, _date: Date) {
        self.taskName = _name;
        self.taskDescription = _description;
        self.isDone = false;
        self.dueDate = _date
   
    }

}

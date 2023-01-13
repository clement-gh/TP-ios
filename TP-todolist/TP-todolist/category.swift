//
//  category.swift
//  TP-todolist
//
//  Created by Clément GHYS on 12/01/2023.
//

import Foundation

class Category {
    var nom : String
    var taskList: [Task]
    
    init (_nom: String){
        self.nom=_nom
        self.taskList = []
        
    }
    
}

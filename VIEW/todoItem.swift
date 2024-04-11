//
//  todoItem.swift
//  todolist
//
//  Created by Ong Eason on 9/4/2024.
//

import SwiftData

@Model
class TodoItem: Identifiable{
    var title: String
    var done: Bool
    
    
    init(title: String, done: Bool) {
        self.title = title
        self.done = done
    }
}

let firstItem =     TodoItem(title: "Study for Chemistry", done: false)

let secondItem =     TodoItem(title: "Finish computer science assignment", done: true)


let thirdItem =     TodoItem(title: "Laundry", done: false)


let exampleItems = [
    firstItem,
    secondItem,
    thirdItem
]


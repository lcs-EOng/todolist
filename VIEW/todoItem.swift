//
//  todoItem.swift
//  todolist
//
//  Created by Ong Eason on 9/4/2024.
//

import Foundation

struct TodoItem: Identifiable{
    let id = UUID()
    var title: String
    var done: Bool
}

let firstItem =     TodoItem(title: "Study for Chemistry", done: false)

let secondItem =     TodoItem(title: "Finish computer science assignment", done: true)


let thirdItem =     TodoItem(title: "Laundry", done: false)


let exampleItems = [
    firstItem,
    secondItem,
    thirdItem
]


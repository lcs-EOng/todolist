//
//  itemview.swift
//  todolist
//
//  Created by Ong Eason on 9/4/2024.
//

import SwiftUI

struct ItemView: View {
    let currentItem: TodoItem
    var body: some View {
        Label(title: {Text(currentItem.title)}, icon: {
            Image(systemName:currentItem.done == true ? "checkmark.circle" : "circle")
        }
        )
    }
}

#Preview {
    List{
        ItemView(currentItem: firstItem)
        ItemView(currentItem: secondItem)
    }
    
}

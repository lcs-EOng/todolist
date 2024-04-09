//
//  itemview.swift
//  todolist
//
//  Created by Ong Eason on 9/4/2024.
//

import SwiftUI

struct ItemView: View {
    let title: String
    let done: Bool
    var body: some View {
        Label(title: {Text(title)}, icon: {
            Image(systemName: done == true ? "checkmark.circle" : "circle")
        }
        )
    }
}

#Preview {
    List{
        ItemView(title: "HW", done: false)
    }
}

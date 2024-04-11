//
//  todolistApp.swift
//  todolist
//
//  Created by Ong Eason on 9/4/2024.
//

import SwiftUI
import SwiftData

@main
struct todolistApp: App {
    var body: some Scene {
        WindowGroup {
            LandingView()
                .modelContainer(for: TodoItem.self)
        }
    }
}

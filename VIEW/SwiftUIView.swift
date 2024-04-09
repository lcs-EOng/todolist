//
//  SwiftUIView.swift
//  todolist
//
//  Created by Ong Eason on 9/4/2024.
//

import SwiftUI

struct LandingView: View {
    //MARK: Stored properties
    
    //The item currently being added
    @State var newItemDescirption: String = ""
    
    //The search text
    @State var searchText = ""
    
    //List of to do things
    @State var todos: [TodoItem] = exampleItems
    
    //MARK: Computed propeties
    var body : some View {
        NavigationView{
            VStack{
                
                List(todos) { todo in
                     ItemView(currentItem: todo)
                }
                
                
                .searchable(text: $searchText)
                HStack{
                    TextField("Enter a to-do item", text:
                    $newItemDescirption)
                    Button("ADD"){
                        //Add the new to-do item
                    }
                    .font(.caption)
                }
                .padding(20)

            }
            .navigationTitle("To do")
        }
        
    }
            }
        
    
    





#Preview {
    LandingView()
}




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
                
                List($todos) {$todo in
                    ItemView(currentItem: $todo)
                    //Delete button
                        .swipeActions {
                            Button(
                                "Delete",
                                role: .destructive,
                                action: {
                                    delete(todo)
                                }
                            )
                        }
                    
                    
                }
                
                .searchable(text: $searchText)
                HStack{
                    TextField("Enter a to-do item", text:
                    $newItemDescirption)
                    Button("ADD"){
                        //Add the new to-do item
                        createToDo(withTitle: newItemDescirption)
                    }
                    .font(.caption)
                    .disabled(newItemDescirption.isEmpty == true)
                }
                .padding(20)

            }
            .navigationTitle("To do")
        }
        
    }
    
    //MARK: Functions
    func createToDo(withTitle title: String){
        //Ceate the new to-do item instance
        let todo = TodoItem(
            title: title,
            done: false
        )
        //Append to  the array
        todos.append(todo)
    }
    
    func delete(_ todo: TodoItem){
        //Remove the provided to-do item from array
        todos.removeAll{ currentItem in
            currentItem.id == todo.id
            
        }
    }
            }

        
    
    





//#Preview {
  //  LandingView()
//}




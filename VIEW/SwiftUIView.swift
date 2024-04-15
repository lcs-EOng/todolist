//
//  SwiftUIView.swift
//  todolist
//
//  Created by Ong Eason on 9/4/2024.
//

import SwiftUI
import SwiftData

struct LandingView: View {
    //MARK: Stored properties
    
    //The item currently being added
    @State var newItemDescirption: String = ""
    
    //The search text
    @State var searchText = ""
    
    // Access the model contexr(required to do additions, deletions, updates, etc)
    @Environment(\.modelContext) var modelContext
    
    //List of to do things
    @Query var todos: [TodoItem]

    //MARK: Computed propeties
    var body : some View {
        NavigationView{
            VStack{
                
                List {
                    ForEach(todos) { todo in
                        
                        ItemView(currentItem: todo)

                    }
                    .onDelete(perform: removeRows)
                }
                .searchable(text: $searchText)
                
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
            .onAppear {
                printCommandToOpenDatabaseFile()
            }

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
        modelContext.insert(todo)
    }
    
    func removeRows(at offsets: IndexSet){
        //Remove the provided to-do item from array
        //(the position of the item being deleted}
        
        //Then Ask  the model context to delete this
        //For us from the "todos" array
        for offset in offsets{
            modelContext.delete(todos[offset])
        }
        }
    }
            

        
    
    





//#Preview {
  //  LandingView()
//}




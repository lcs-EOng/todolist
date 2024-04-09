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
    
    //MARK: Computed propeties
    var body : some View {
        NavigationView{
            VStack{
                List{
                    ItemView(currentItem: firstItem)
                    ItemView(currentItem: secondItem)
                    ItemView(currentItem: thirdItem)
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
            }
            .navigationTitle("To do")
            .padding(20)
        }
        
    }
            }
        
    
    





#Preview {
    LandingView()
}




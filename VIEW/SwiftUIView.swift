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
                    HStack{
                        Image(systemName: "circle")
                        Text("Study for Chemistry quiz")
                    }
                    Label(title: {Text("Go for a run around campus")}, icon: {Image(systemName: "circle")
                    })
                    Label(title: {Text("Laundry")}, icon: {Image(systemName: "circle")
                    })
                }
                    .searchable(text: $searchText)
                    
                }
                .navigationTitle("To do")
                .padding(20)
            }
        }
    }
    





#Preview {
    LandingView()
}


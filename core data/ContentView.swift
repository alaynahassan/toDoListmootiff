//
//  ContentView.swift
//  core data
//
//  Created by Alayna Hassan on 2023-08-15.
//

import SwiftUI

struct ContentView: View {
    
    @State var toDoItems: [ToDoItem] = []
    
    @State private var showNewTask = false
    
    

    var body: some View {
        
        
        VStack {
            

            HStack {
                
                
                
                Text("To Do List")
                    .font(.system(size: 36))
                    .fontWeight(.black)
                
                Spacer()
                
                Button(action: {
                    self.showNewTask = true
                }) {
                    Text("Add")
                }
            }
            Spacer()
            .padding()
        }
        
        List {
            ForEach (toDoItems) {toDoItem in
                if toDoItem.isImportant == true {
                    Text("‼️" + toDoItem.title)
                } else {
                    Text(toDoItem.title)
                }
            }
            
        }
        .listStyle(.plain)

        
        if showNewTask {
            NewToDoView(title:"", isImportant: false,  showNewTask: $showNewTask, toDoItems: $toDoItems) 
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  NewToDoView.swift
//  core data
//
//  Created by Alayna Hassan on 2023-08-15.
//

import SwiftUI

struct NewToDoView: View {
    
    @State var title: String
    @State var isImportant: Bool
    
    @Binding var showNewTask : Bool
    
    @Binding var toDoItems: [ToDoItem]

    var body: some View {
        
        VStack {
            Text ("Task Title:")
                .font(.title)
                .fontWeight(.bold)
            
            TextField("Enter a task despcription", text: $title)
                .padding()
                .background(Color(.systemGroupedBackground))
                .cornerRadius(15)
                .padding()
            
            Toggle(isOn: $isImportant) {
                Text("Is it important?")
            }
            
            Button(action: {
                self.addTask(title: self.title, isImportant: self.isImportant)
                
                self.showNewTask = false
                
            }) {
                Text("Add")
            }
            
        }
        
       
    }

    private func addTask(title: String, isImportant: Bool = false) {
            
            let task = ToDoItem(title: title, isImportant: isImportant)
            toDoItems.append(task)
        }
}
        

struct NewToDoView_Previews: PreviewProvider {
    static var previews: some View {
        NewToDoView(title: "", isImportant: false, showNewTask: .constant(true), toDoItems: .constant([]))
    }
}

//
//  to do item.swift
//  core data
//
//  Created by Alayna Hassan on 2023-08-15.
//

import Foundation


class ToDoItem : Identifiable {
    var title = ""
    var isImportant = false
    var id = UUID()

    



init(title: String, isImportant: Bool = false) {
        self.title = title
        self.isImportant = isImportant
    }


}


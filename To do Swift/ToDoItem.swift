//
//  ToDoItem.swift
//  To do Swift
//
//  Created by Wan Muzaffar on 15/04/2021.
//

import UIKit

// 1) Class declaration
class ToDoItem: NSObject {
    // 2) Property declaration for our class
    var itemName: String = ""
    var itemDesc: String = ""
    var itemPlace: String
    var completed: Bool
    
    // 3) Method, [getter, setter, toString] (Java)
    
    // 4) Initializer, constructor
    
    init(itemName:String, itemDesc:String,
         itemPlace:String) {
        self.itemName = itemName
        self.itemDesc = itemDesc
        self.itemPlace = itemPlace
        self.completed = false
    }
    

}

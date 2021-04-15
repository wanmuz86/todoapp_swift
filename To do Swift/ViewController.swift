//
//  ViewController.swift
//  To do Swift
//
//  Created by Wan Muzaffar on 15/04/2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // I declare a new array of TodoItem
    // I call it itemsArray
    // List<String> itemsArray = new ArrayList<>();
    // @property (nonmutable) NSMutableArray *itemsArray; - Objc
    
    var itemsArray : [ToDoItem] = []
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // similar to list.size() in Android
        return itemsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        // Dapatkan itemsArray at position  indexPath.row
        
        // Bring out the itemName
        cell.textLabel?.text = itemsArray[indexPath.row].itemName
        cell.detailTextLabel?.text =
            itemsArray[indexPath.row].itemPlace
        
        if itemsArray[indexPath.row].completed {
            cell.imageView?.image = UIImage(named:
                                                "correct")
        }
        else {
            cell.imageView?.image = UIImage(named: "wrong")
        }
        return cell;
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Create a new todo item object, by
        //calling ToDoItem initializer
        let newItem = ToDoItem(itemName: "Finish proposal", itemDesc: "Send proposal to company xxxx ", itemPlace: "office")
        newItem.completed = true
        itemsArray.append(newItem)
        
        let newItem2 = ToDoItem(itemName: "Intro to Swift", itemDesc: "Go through intro to swift", itemPlace: "Mampu office")
        itemsArray.append(newItem2)
        
        let newItem3 = ToDoItem(itemName: "Bazar ramadan", itemDesc: "Buy food for break fast", itemPlace: "Bangi")
        itemsArray.append(newItem3)
    }


    @IBAction func buttonPressed(_ sender: Any) {
       
        
        // ALert code for Swift
        // Replace [] with () -> function call
        // YES with true
        // let instead of Class type
        let alertCtrl = UIAlertController(title: "Hello World", message: "Welcome to my app", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertCtrl.addAction(okAction)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alertCtrl.addAction(cancelAction)
        
        alertCtrl.addTextField { (textField) in
            textField.placeholder = "Enter item name"
        }
        // TODO Form for item place
        
        // Form for item description
        
        present(alertCtrl, animated: true, completion: nil)
    }
}


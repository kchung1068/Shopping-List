//
//  ViewController.swift
//  Shopping List
//
//  Created by Kyle Chung on 2/8/19.
//  Copyright © 2019 Kyle Chung. All rights reserved.
// Elliot Rocks 
// 
import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    
    
    var items: [item] = []
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // let cell = tableView.dequeueReusableCell(withIdentifier: "myCell")! but can crash
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "myCell") {
            
            
            let itemname = items[indexPath.row].name
            
            
            cell.textLabel?.text = itemname
            
            let itemQuantity = items[indexPath.row].quantity
            
            cell.detailTextLabel?.text = "Quantity:\(itemQuantity)"
            
            
            
            if indexPath.row % 2 == 0 {
            cell.backgroundColor = UIColor.blue
            cell.textLabel?.textColor = UIColor.orange
                cell.imageView?.image = UIImage(named: "Unknown")
                
            } else {
                cell.backgroundColor = UIColor.yellow
                cell.textLabel?.textColor = UIColor.purple
                cell.imageView?.image = UIImage(named: "Yoshi")
                
            }
            
            return cell
        } else {
            
        return UITableViewCell()
            
        }
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return items.count
    }
    

    @IBOutlet var tableView: UITableView!
    
    @IBOutlet var newItemTextField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        let Hi = item(name: "Milk", quantity: 2)
        let itemOne = item(name: "Milk")
        let itemTwo = item(name: "Blueberries")
        items = [itemOne, itemTwo]
        let itemThree = item(name: "Crackers")
        let extraterrestrial = item(name: "麵包")
        items.append(itemThree)
        items.append(extraterrestrial)
        items.append(Hi)
        
    }

    @IBAction func itembarButtonPressed(_ sender: Any) {
        
        if let newItemName = newItemTextField.text, newItemName != ""  {
            let newItem = item(name: newItemName)
            items.append(newItem)
            tableView.reloadData()
            
            
        }
        
        
    }
    
    
    
}


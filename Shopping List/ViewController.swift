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
            
            
            if indexPath.row % 2 == 0 {
            cell.backgroundColor = UIColor.blue
            cell.textLabel?.textColor = UIColor.orange
            } else {
                cell.backgroundColor = UIColor.yellow
                cell.textLabel?.textColor = UIColor.purple
                
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
        
        let itemOne = item(name: "Milk")
        let itemTwo = item(name: "Blueberries")
        items = [itemOne, itemTwo]
        let itemThree = item(name: "Crackers")
        items.append(itemThree)
    }

    @IBAction func itembarButtonPressed(_ sender: Any) {
        
        
    }
    
    
}


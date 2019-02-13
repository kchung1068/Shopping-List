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
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // let cell = tableView.dequeueReusableCell(withIdentifier: "myCell")! but can crash
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "myCell") {
            
            cell.textLabel?.text = "Hello"
            
            
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
        
        return 19
    }
    

    @IBOutlet var tableView: UITableView!
    
    @IBOutlet var newItemTextField: UITextField!
    
    var items: [Item] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        
        let itemOne = Item(name: "Milk")
        let itemTwo = Item(name: "Blueberries")
        items = [itemOne, itemTwo]
    }

    @IBAction func itembarButtonPressed(_ sender: Any) {
        
        
    }
    
    
}


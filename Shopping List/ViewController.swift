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
        
        return
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 10
    }
    

    @IBOutlet var tableView: UITableView!
    
    @IBOutlet var newItemTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }

    @IBAction func itembarButtonPressed(_ sender: Any) {
        
        
    }
    
    
}


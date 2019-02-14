//
//  SecondViewController.swift
//  Shopping List
//
//  Created by Kyle Chung on 2/14/19.
//  Copyright © 2019 Kyle Chung. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
   
    @IBOutlet var quantityLabel: UILabel!
    
    var passedItem : item!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = passedItem.name
        quantityLabel.text = "Quantity: \(passedItem.quantity)"
       
    }
    

    

}

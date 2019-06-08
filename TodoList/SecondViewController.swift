//
//  SecondViewController.swift
//  TodoList
//
//  Created by Benedito Macedo on 27/05/19.
//  Copyright © 2019 bamacedo. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var newItem: UITextField!
    
    @IBAction func addItem(_ sender: Any) {
        
        var items: [String]
        
        let itemsObject = UserDefaults.standard.object(forKey: "items")
        
        if let tempItems = itemsObject as? [String] {
            items = tempItems
            if !(newItem.text!.isEmpty) {
                items.append(newItem.text!)
            }
        } else {
            items = [newItem.text!]
        }
        
        UserDefaults.standard.set(items,forKey: "items")
        newItem.text = ""
        
        // disable keyboard after input finished
        //
        newItem.resignFirstResponder()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

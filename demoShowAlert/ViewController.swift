//
//  ViewController.swift
//  demoShowAlert
//
//  Created by Chien on 4/24/18.
//  Copyright © 2018 Chien. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lbText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func ibAdd(_ sender: Any) {
        
        ///Great the controller
        
        let alertView = UIAlertController(title: "Save", message: "Do you save text?", preferredStyle: .alert)
        
        ///Add TExtField
        
        alertView.addTextField(configurationHandler: { textField in
            textField.placeholder = "Input your name here..."
        })
        
        ///Action
        let Cancel = UIAlertAction(title: "Cancel", style: .destructive) { (action) in
            self.lbText.text = " Save cancel"
        }
        let Save = UIAlertAction(title: "Save", style: .default) { (action) in
            self.lbText.text = alertView.textFields?.first?.text
        }
        
        /// Display
        alertView.addAction(Cancel)
        alertView.addAction(Save)
        
        present(alertView, animated: true, completion: nil)
        
    }
}

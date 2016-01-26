//
//  AddItemViewController.swift
//  iOS4-HW5-Delegation
//
//  Created by Kathryn Rotondo on 1/20/16.
//  Copyright © 2016 Kathryn Rotondo. All rights reserved.
//

import UIKit
// declare protocol
protocol SaveNewData {
    func saveData (data:String)
}

class AddItemViewController: UIViewController {

    @IBOutlet weak var itemTextField: UITextField!
    
    // declare variable for delegated work 
    var delegate:SaveNewData?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func saveButtonPressed(sender: AnyObject) {
        // call the method on delegate 
        
        delegate?.saveData(itemTextField.text!)
        
        // pop the top viewController 
        navigationController?.popViewControllerAnimated(true)
        
        
    }
}

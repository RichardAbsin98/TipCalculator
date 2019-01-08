//
//  ViewController.swift
//  MyTips
//
//  Created by Richard Absin on 1/7/19.
//  Copyright © 2019 Richard Absin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func onTap(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
        
    }
    
    let tipPercentages = [0.18, 0.2, 0.25]
    
    @IBAction func calculateTip(_ sender: AnyObject) {
        
        // Take whatever string into a double
        // 0 is a default in case of an invalid input
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    

    
}


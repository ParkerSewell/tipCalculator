//
//  ViewController.swift
//  tipCalculator
//
//  Created by Parker Sewell on 12/16/15.
//  Copyright © 2015 Parker Sewell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var person2: UILabel!
    @IBOutlet weak var person3: UILabel!
    @IBOutlet weak var person4: UILabel!
    @IBOutlet weak var splitCheck: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
       
        billField.becomeFirstResponder()
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
        person2.text = "$0.00"
        person3.text = "$0.00"
        person4.text = "$0.00"
        tipControl.selectedSegmentIndex = 1
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.

}
    
    @IBAction func onEditingChanged(sender: AnyObject) {
        
        
        var tipPercentages = [0.10, 0.15, 0.2]
        var tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        var billAmount = NSString(string: billField.text!).doubleValue
        var tip = billAmount * tipPercentage
        var total = billAmount + tip
        
        tipLabel.text = "$\(tip)"
        totalLabel.text = "$\(total)"
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f",total)
        person2.text = String(format: "$%.2f", total/2)
        person3.text = String(format: "$%.2f", total/3)
        person4.text = String(format: "$%.2f", total/4)
    }
    
    @IBAction func buttonClick2(sender: AnyObject) {
        view.endEditing(true)
        splitCheck.hidden = true
        
    }
    
    @IBAction func editingBegins(sender: AnyObject) {
        splitCheck.hidden = false
    }
    

}
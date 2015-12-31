//
//  SettingsViewController.swift
//  Tabulate
//
//  Created by Parker Sewell on 12/30/15.
//  Copyright © 2015 Parker Sewell. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    

    @IBOutlet weak var defaultTip: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()
        defaultTip.selectedSegmentIndex = 1

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setObject(defaultTip.selectedSegmentIndex, forKey: "current tip")
 
        
        
        
        
        
        
        
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

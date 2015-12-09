//
//  ViewController.swift
//  VeiwTest2
//
//  Created by Jeff Lee on 4/12/2015.
//  Copyright © 2015 Jeff Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var isVerified = true;
    
    // Mark outlets
    @IBOutlet weak var btnStarted:UIButton!
    @IBOutlet weak var swichIsVerified:UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //btnStarted.layer.borderWidth = 0.5
        btnStarted.layer.cornerRadius = 5
        //swichIsVerified.setOn(false, animated:false)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // Mark events
    @IBAction func btnStartedOnClick(sender: AnyObject) {
        print(isVerified);
        if isVerified {
            performSegueWithIdentifier("NewShieldCodeSegue", sender: self)
        } else {
            performSegueWithIdentifier("SyncCodeSegue", sender: self)
        }
    }
    
    @IBAction func switchValueChanged(sender: UISwitch) {
        if swichIsVerified.on {
            isVerified = true;
        } else {
            isVerified = false;
        }
    }
    
}


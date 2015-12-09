//
//  MainViewController.swift
//  VeiwTest2
//
//  Created by Jeff Lee on 9/12/2015.
//  Copyright © 2015 Jeff Lee. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

     var isVerified = true;
    
    //MARK: outlets
    @IBOutlet weak var btnStarted: UIButton!
    @IBOutlet weak var swichIsVerified: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: events
    @IBAction func btnStartedOnClick(sender: AnyObject) {
        print(isVerified);
        if isVerified {
            performSegueWithIdentifier("NewShieldCodeSegue", sender: self)
        } else {
            performSegueWithIdentifier("SyncCodeSegue", sender: self)
        }
    }

    @IBAction func switchValueChanged(sender: AnyObject) {
        if swichIsVerified.on {
            isVerified = true;
        } else {
            isVerified = false;
        }
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

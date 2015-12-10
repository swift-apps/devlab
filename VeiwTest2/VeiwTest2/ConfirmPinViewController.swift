//
//  ConfirmPinViewController.swift
//  VeiwTest2
//
//  Created by Jeff Lee on 5/12/2015.
//  Copyright © 2015 Jeff Lee. All rights reserved.
//

import UIKit

class ConfirmPinViewController: UIViewController {
    var pwd1:String?
    var pwd2:String?
    var pwd3:String?
    var pwd4:String?

    // MARK: outlets
    @IBOutlet weak var pin1:UITextField!
    @IBOutlet weak var pin2:UITextField!
    @IBOutlet weak var pin3:UITextField!
    @IBOutlet weak var pin4:UITextField!
    @IBOutlet weak var lblWarning: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("pin1: \(pwd1)")
        print("pin2: \(pwd2)")
        print("pin3: \(pwd3)")
        print("pin4: \(pwd4)")
        lblWarning.hidden = true;
        // Do any additional setup after loading the view.
        pin1.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: events
    @IBAction func pin1ValueChanged(sender: AnyObject) {
        if(pin1.text?.utf16.count >= 1) {
            pin2.becomeFirstResponder()
            lblWarning.hidden = true;
        }
    }
    @IBAction func pin2ValueChanged(sender: AnyObject) {
        if(pin2.text?.utf16.count >= 1) {
            pin3.becomeFirstResponder()
        }
    }
    @IBAction func pin3ValueChanged(sender: AnyObject) {
        if(pin3.text?.utf16.count >= 1) {
            pin4.becomeFirstResponder()
        }
    }
    @IBAction func pin4ValueChanged(sender: AnyObject) {
        if(pin4.text?.utf16.count >= 1) {
            pin4.resignFirstResponder()
            
            if(pin1.text == pwd1 && pin2.text == pwd2 &&
               pin3.text == pwd3 && pin4.text == pwd4) {
                performSegueWithIdentifier("CreateShieldCode", sender: self)
            } else {
                pin1.text = ""
                pin2.text = ""
                pin3.text = ""
                pin4.text = ""
                lblWarning.hidden = false;
                pin1.becomeFirstResponder()
            }
            
            
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

//
//  CheckPinViewController.swift
//  VeiwTest2
//
//  Created by Jeff Lee on 5/12/2015.
//  Copyright © 2015 Jeff Lee. All rights reserved.
//

import UIKit

class CheckPinViewController: UIViewController,UITextFieldDelegate {
    
    // MARK: outlets
    @IBOutlet weak var pin1:UITextField!
    @IBOutlet weak var pin2:UITextField!
    @IBOutlet weak var pin3:UITextField!
    @IBOutlet weak var pin4:UITextField!

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //self.pin1.delegate = self
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
            //print("Done");
            pin4.resignFirstResponder()
            performSegueWithIdentifier("ConfirmPinCodeSegue", sender: self)
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        
        // Create a new variable to store the instance of the next view controller
        let destinationVC = segue.destinationViewController as! ConfirmPinViewController
        destinationVC.pwd1 = pin1.text
        destinationVC.pwd2 = pin2.text
        destinationVC.pwd3 = pin3.text
        destinationVC.pwd4 = pin4.text
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

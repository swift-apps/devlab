//
//  SyncCodeViewController.swift
//  VeiwTest2
//
//  Created by Jeff Lee on 5/12/2015.
//  Copyright © 2015 Jeff Lee. All rights reserved.
//

import UIKit

class SyncCodeViewController: UIViewController, UITextFieldDelegate {

    // MARK: outlets
    @IBOutlet weak var txtSyncCode:UITextField!
    let limitLength = 10;
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        txtSyncCode.becomeFirstResponder()
        txtSyncCode.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: events
    func textFieldShouldReturn(textField: UITextField) -> Bool{
        textField.resignFirstResponder()
        print("done pressed")
        return true;
    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        guard let text = textField.text else { return true }
        let newLength = text.characters.count + string.characters.count - range.length
        return newLength <= limitLength
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

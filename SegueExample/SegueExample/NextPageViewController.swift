//
//  NextPageViewController.swift
//  SegueExample
//
//  Created by Jeff Lee on 11/09/2015.
//  Copyright (c) 2015 Jeff Lee. All rights reserved.
//

import UIKit

class NextPageViewController: UIViewController {

    var bgColor: UIColor?
    
    override func viewDidLoad() {
        self.view.backgroundColor = bgColor
    }
    
    @IBAction func closeButton(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}

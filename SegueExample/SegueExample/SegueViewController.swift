//
//  ViewController.swift
//  SegueExample
//
//  Created by Jeff Lee on 11/09/2015.
//  Copyright (c) 2015 Jeff Lee. All rights reserved.
//

import UIKit

class SegueViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let vc: NextPageViewController = segue.destinationViewController as NextPageViewController
        
        if("segueNext" == segue.identifier)
        {
            vc.bgColor = UIColor.blueColor()
        }
        
        if ("segueNext2" == segue.identifier)
        {
            vc.bgColor = UIColor.redColor()
        }
        
    }
    
    // Mark : Actions

    @IBAction func touchNext(sender: AnyObject) {
        self.performSegueWithIdentifier("segueNext", sender: self)
    }

    @IBAction func movePage(sender: AnyObject) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let nextViewController = storyboard.instantiateViewControllerWithIdentifier("NextView") as NextPageViewController
        self.presentViewController(nextViewController, animated: true, completion: nil)
    }
}


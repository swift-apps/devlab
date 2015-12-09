//
//  ViewController.swift
//  LayoutConstraint
//
//  Created by Jeff Lee on 8/09/2015.
//  Copyright (c) 2015 Jeff Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        let btnCenter = UIButton.buttonWithType(UIButtonType.System) as UIButton
//        btnCenter.frame = CGRectMake(100,100,100,50)
//        btnCenter.backgroundColor = UIColor.greenColor()
//        btnCenter.setTitle("Center", forState: UIControlState.Normal)
//        
//        btnCenter.addTarget(self, action: "btnCenterOnClick:", forControlEvents: UIControlEvents.TouchUpInside)
//        btnCenter.setTranslatesAutoresizingMaskIntoConstraints(false)
//        
//        self.view.addSubview(btnCenter)
        
        //let horizotalConstraint = NSLayoutConstraint(item: btnCenter, attribute: NSLayoutAttribute.CenterX, relatedBy : NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterX, multiplier: 1, constant: 0)
        
        //let verticalConstraint = NSLayoutConstraint(item: btnCenter, attribute: NSLayoutAttribute.CenterY, relatedBy : NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterY, multiplier: 1, constant: 0)
        
        //let widthConstraint = NSLayoutConstraint(item: btnCenter, attribute: NSLayoutAttribute.Width, relatedBy : NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1, constant: 100)
        
        //let heightConstraint = NSLayoutConstraint(item: btnCenter, attribute: NSLayoutAttribute.Height, relatedBy : NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1, constant: 100)
        
        //btnCenter.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        //view.addConstraint(horizotalConstraint)
        //view.addConstraint(verticalConstraint)
        //btnCenter.addConstraint(widthConstraint)
        //btnCenter.addConstraint(heightConstraint)
        //view.addConstraint(widthConstraint)
        //view.addConstraint(heightConstraint)
        
//        let views = ["view" : view, "btnCenter" : btnCenter]
//        let horizontalConstraints = NSLayoutConstraint.constraintsWithVisualFormat("H:[view]-(<=0)-[btnCenter(100)]", options: NSLayoutFormatOptions.AlignAllCenterY, metrics: nil, views: views)
//        let verticalConstraints = NSLayoutConstraint.constraintsWithVisualFormat("V:[view]-(<=0)-[btnCenter(100)]", options: NSLayoutFormatOptions.AlignAllCenterX, metrics: nil, views: views)
//        
//        view.addConstraints(horizontalConstraints)
//        view.addConstraints(verticalConstraints)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnCenterOnClick(sender: UIButton)
    {
        let btnCenter = sender as UIButton
        btnCenter.setTitle("Hello", forState: UIControlState.Normal)
    }

}


//
//  CreateShieldCodeViewController.swift
//  VeiwTest2
//
//  Created by Jeff Lee on 5/12/2015.
//  Copyright © 2015 Jeff Lee. All rights reserved.
//

import Foundation
import UIKit

class CreateShieldCodeViewController: UIViewController {

    @IBOutlet weak var lblShieldCode: UILabel!
    @IBOutlet weak var progressView: UIProgressView!
    var progressCount:Int32 = 100;
    
    override func viewDidLoad() {
        super.viewDidLoad()

        progressView.setProgress(1.0, animated: false)
        resetPassword()
        
        NSTimer.scheduledTimerWithTimeInterval(30.0, target: self, selector: Selector("resetPassword"), userInfo: nil, repeats: true)
        NSTimer.scheduledTimerWithTimeInterval(0.3, target: self, selector: Selector("resetProgressView"), userInfo: nil, repeats: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func resetProgressView()
    {
        if (progressCount < 0) {
            progressCount = 100;
            progressView.setProgress(1.0, animated: false)
        }
        
        let fractionalProgress = Float(progressCount) / 100.0
        progressView.setProgress(fractionalProgress, animated: true)
        
        progressCount--
    }
    
    func resetPassword() {
        let factor = Generator.Factor.Timer(period: 30)
        let secret = "09876543210987654321".dataUsingEncoding(NSASCIIStringEncoding)!
        let algorithm = Generator.Algorithm.SHA512
        let digits = 7
        
        let date = NSDate()
        let timestamp = floor(date.timeIntervalSince1970 * 1000)
        
        let generator = Generator(
            factor: factor,
            secret: secret,
            algorithm: algorithm,
            digits: digits
        )
        let password = generator.flatMap { try? $0.passwordAtTime(timestamp) }
        lblShieldCode.text = password
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